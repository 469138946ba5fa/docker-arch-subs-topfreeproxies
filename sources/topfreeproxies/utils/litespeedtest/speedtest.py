import json, base64, os
import subprocess, argparse
from tqdm import tqdm
import time

def speedtest(subscription,output_range,other_config={'concurrency': -1, 'timeout': -1}):
    """Wrapper for litespeedtest.
    configurations:
        subscription: Subcription to speedtest, support local file path or url
        output_range: output proxy list range. Set value to '-1' means output all the prorxies, '99' means output 0 to 99 proxies, '99,999' means output 99 to 999 proxies.
        concurrency: The number of proxies tested in one time
        timeout: Time period that cannot connect to the tested proxy
    """
    default_config = {
        'subscription': subscription, 'outputRange': output_range, 'speedtestMode': 'all',
        'concurrency': -1, 'timeout': -1
    }
    config = default_config
    config.update(other_config)
    
    work_dir = os.getcwd()
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    confighandler(config) # Initialize configurations
    if os.name == 'posix':
        args = ['./lite', '--config', './config.json', '--test', f'{subscription}']
    # elif os.name == 'nt':
    #     args = ['.\lite-windows-amd64.exe', '--config', './config.json', '--test', f'{subscription}']
    litespeedtest = subprocess.Popen(args,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        universal_newlines=True,
        encoding='utf-8',
        errors='replace',  # 或者使用 'ignore' https://www.codenong.com/42339876/
        bufsize=1)

    # 初始化 tqdm bar 进度条，初始总数设为 1
    # pbar = tqdm(total=1, desc="Litespeedtest running progress", dynamic_ncols=True)
    pbar = tqdm(
        total=1,
        desc="Litespeedtest running progress",
        dynamic_ncols=True,
        # |>·········|
        ascii='·>', # ascii=True,
        bar_format='{desc}: |{bar}| {n_fmt}/{total_fmt} Nodes [{elapsed}<{remaining}]'
    )

    max_node = 1

    for line in iter(litespeedtest.stdout.readline, ''):
        try:
            info = json.loads(line[19:])
            try:
                # 计算新的最大节点数
                new_total = int(info['servers'][-1]['id']) + 1
                if new_total > max_node:
                    max_node = new_total
                    pbar.total = max_node  # 动态更新总数
            except Exception:
                pass            
            if info.get('info') == 'endone':
                pbar.update(1)
        except Exception:
            pass

    pbar.close()  # 关闭进度条显示
    litespeedtest.wait()  # 显式等待子进程结束

    # Generate proxies list
    if os.path.exists('./output.json'):
        with open('./output.json', 'r', encoding='utf-8') as f:
            proxies_all = json.load(f)['nodes']
        os.remove('./output.json')
    else:
        print("未找到 output.json 文件")
        proxies_all = []

    os.chdir(work_dir)

    output_list = []
    output_range = config['outputRange']
    
    if ',' in output_range:
        output_range = {'begin': int(output_range.split(',',1)[0]),'end': int(output_range.split(',',1)[1])}
    elif output_range == '-1':
        output_range = {'begin': 0, 'end': len(proxies_all)}
    else:
        output_range = {'begin': 0, 'end': int(output_range)}
    
    for index in range(output_range['begin'],output_range['end']):
        try:
            proxy = proxies_all[index]['link']
            output_list.append(proxy)
        except Exception:
            pass
    content = base64.b64encode('\n'.join(output_list).encode('utf-8')).decode('ascii')
    return content

def confighandler(input_config):
    """Config handler for litespeedtest config
    target handling config parameters:
        subscription: Subcription to speedtest, support local file path or url
        outputRange: output proxy list range. Set value to '-1' means output all the prorxies, '99' means output 0 to 99 proxies, '99,999' means output 99 to 999 proxies.
        concurrency: The number of proxies tested in one time
        timeout: Time period that cannot connect to the tested proxy
    function input_config variant should be a dictionary which has keys and values of above parameters
    """
    with open('./config.json', 'r', encoding='utf-8') as f:
        lite_config = json.load(f)

    lite_config['subscription'] = input_config['subscription']
    lite_config['outputRange'] = input_config['outputRange']
    lite_config['speedtestMode'] = input_config['speedtestMode']
    if input_config['concurrency'] != -1:
        lite_config['concurrency'] = input_config['concurrency']
    if input_config['timeout'] != -1:
        lite_config['timeout'] = input_config['timeout']

    with open('./config.json', 'w', encoding='utf-8') as f:
        f.write(json.dumps(lite_config, sort_keys=False, indent=4, ensure_ascii=False))

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Test nodes, and output base64 subscription file.')
    parser.add_argument('--subscription', '-s', help='Subcription url or local file path', default='https://raw.githubusercontent.com/469138946ba5fa/docker-arch-subs-topfreeproxies/master/topfreeproxies/sub/sub_merge_base64.txt')
    parser.add_argument('--range', '-r', help='Target proxies range to output', default="99")
    parser.add_argument('--path', '-p', help='Output file path', default='./output.txt')
    args = parser.parse_args()

    # Write content to file(relative path to script directory)
    work_dir = os.getcwd()
    output = speedtest(args.subscription,str(args.range))
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    with open(args.path, 'w', encoding='utf-8') as f:
        f.write(output)
    os.chdir(work_dir)

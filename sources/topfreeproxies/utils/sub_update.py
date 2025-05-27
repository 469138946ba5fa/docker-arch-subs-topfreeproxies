#!/usr/bin/env python3

from datetime import datetime
import json
import re
import requests
import logging

# 配置日志记录
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# 生成日期格式
today = datetime.today()
this_year = today.strftime('%Y')
# 获取日期的字符串表示
this_month_str = today.strftime('%m')  # 保留前导零的月份，例如 '03'
this_month_int = str(today.month)      # 去掉前导零的月份，例如 '3'
this_today = today.strftime('%Y%m%d')
this_day_str = today.strftime('%d')    # 保留前导零的日，例如 '03'
this_day_int = str(today.day)        # 去掉前导零的日，例如 '3'
print(f'{this_today}')

class Update():
    def __init__(self, config={'list_file': './sub/sub_list.json'}):
        self.list_file = config['list_file']
        self.session = requests.Session()  # 创建一个请求会话实例
        # 载入订阅链接
        with open(self.list_file, 'r', encoding='utf-8') as f:
            raw_list = json.load(f)
            self.raw_list = raw_list
        self.update_main()

    def url_updated(self, url):
        """判断远程链接是否已更新"""
        try:
            resp = self.session.get(url, timeout=10)
            resp.raise_for_status()  # 如果响应状态码为4xx或5xx，会抛出异常
            logging.info(f"Status code for {url}: {resp.status_code}")
            return True
        except requests.RequestException as e:
            logging.error(f"Error fetching {url}: {e}")
            return False

    def check_urls(self, urls):
        """逐个检查每个 URL，如果全都返回 200，则返回 True，否则返回 False"""
        url_list = urls.split('|')  # 将传入的 | 分隔字符串拆分成 URL 列表
        # 检查每个 URL 是否有效
        for url in url_list:
            if not self.url_updated(url):  # 如果某个 URL 无法成功请求
                logging.error(f"URL {url} failed or is invalid.")
                return False  # 返回 False，表示某个 URL 无效
        logging.info("All URLs are valid.")
        return True  # 如果所有 URL 都有效，返回 True

    def get_valid_urls_joined(self, urls):
        """返回有效的 URL，用 | 拼接成一个字符串"""
        url_list = urls.split('|')  # 将传入的 | 分隔字符串拆分成 URL 列表
        valid_urls = []  # 初始化一个空列表，用于存储有效的 URL

        for url in url_list:
            if self.url_updated(url):  # 如果 URL 可以成功请求
                valid_urls.append(url)  # 将其添加到有效 URL 列表
            else:
                logging.error(f"URL {url} failed or is invalid.")  # 记录无效 URL 的错误日志

        joined_urls = '|'.join(valid_urls)  # 将有效 URL 列表用 | 拼接成字符串
        logging.info(f"Valid URLs joined: {joined_urls}")  # 记录拼接后的 URL 字符串
        return joined_urls  # 返回拼接后的有效 URL 字符串


    def update_main(self):
        """主更新函数，更新订阅链接"""
        for sub in self.raw_list:
            id = sub['id']
            current_url = sub['url']
            try:
                if sub['update_method'] != 'auto' and sub['enabled'] == True:
                    logging.info(f'Finding available update for ID {id}')
                    if sub['update_method'] == 'change_date':
                        new_url = self.change_date(id, current_url)
                        if new_url != current_url:
                            sub['url'] = new_url
                            logging.info(f'ID {id} url updated to {new_url}')
                        else:
                            logging.info(f'No available update for ID {id}')
                    elif sub['update_method'] == 'page_release':
                        new_url = self.find_link(id, current_url)
                        if new_url != current_url:
                            sub['url'] = new_url
                            logging.info(f'ID {id} url updated to {new_url}')
                        else:
                            logging.info(f'No available update for ID {id}')
            except KeyError:
                logging.error(f'{id} Url not changed! Please define update method.')

        # 一次性更新文件
        with open(self.list_file, 'w', encoding='utf-8') as file:
            updated_list = json.dumps(self.raw_list, sort_keys=False, indent=2, ensure_ascii=False)
            file.write(updated_list)

    def change_date(self, id, current_url):
        """更新 URL 地址，基于日期"""
        if id == 0:
            new_url = f'https://crazygeeky.com/wp-content/uploads/attachment/{this_today}.txt|https://crazygeeky.com/wp-content/uploads/attachment/{this_today}.yaml'
        elif id == 1:
            new_url = f'https://nodefree.org/dy/{this_year}/{this_month_str}/{this_today}.yaml|https://nodefree.org/dy/{this_year}/{this_month_str}/{this_today}.txt|https://v2rayshare.com/wp-content/uploads/{this_year}/{this_month_str}/{this_today}.txt'
        elif id == 2:
            new_url = f'https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/0-{this_today}.txt|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/1-{this_today}.txt|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/2-{this_today}.txt|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/3-{this_today}.txt|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/4-{this_today}.txt|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/0-{this_today}.yaml|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/1-{this_today}.yaml|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/2-{this_today}.yaml|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/3-{this_today}.yaml|https://node.freeclashnode.com/uploads/{this_year}/{this_month_str}/4-{this_today}.yaml'
        elif id == 3:
            new_url = f'https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/0-{this_today}.txt|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/1-{this_today}.txt|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/2-{this_today}.txt|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/3-{this_today}.txt|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/4-{this_today}.txt|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/0-{this_today}.yaml|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/1-{this_today}.yaml|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/2-{this_today}.yaml|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/3-{this_today}.yaml|https://node.freev2raynode.com/uploads/{this_year}/{this_month_str}/4-{this_today}.yaml'

        valid_urls = self.get_valid_urls_joined(new_url)
        if valid_urls:  # 如果存在有效 URL
            return valid_urls
        else:  # 如果没有有效 URL
            return current_url


    def process_links(self, url, exclusion_patterns, pattern):
        """提取并处理链接"""
        try:
            response = self.session.get(url, timeout=10)
            response.raise_for_status()
            # 提取链接并移除双引号
            all_links = [link.replace('"', '') for link in re.findall(pattern, response.text)]
            # 根据排除规则过滤链接并附加参数
            links = []
            for link in all_links:
                if any(re.search(exclusion, link) for exclusion in exclusion_patterns):
                    continue
                if 'sub.xn--4gqvd492adjr.com' in link:  # 检查域名匹配
                    links.append(f"{link}/?flag=clash.meta")  # 添加参数
                else:
                    links.append(link)
            return "|".join(links) if links else None
        except requests.RequestException as e:
            logging.error(f"Failed to fetch links from {url}: {e}")
            return None

    def find_link(self, id, current_url):
        """根据 ID 查找更新的链接"""
        # 定义更加泛化的排除规则
        exclusion_patterns = [
            r"//github\.com/.+/releases/download",  # GitHub Releases 下载链接
            r"//127\.0\.0\.1:\d+/",  # 本地链接 (支持 http/https)
            r"//notify\..+?/",  # 通知服务
            r"//github\.com/.+/apprise",  # Apprise 服务
            r"//slink\.ltd/.+?",  # Slink 重定向链接
            r"//example\.com/.+?",  # 示例域名 (支持所有路径)
            r"//example\.worker\.dev",  # 匹配 example.worker.dev
            r"HTTP_PROXY|HTTPS_PROXY",  # 环境变量相关
        ]
        pattern = r'https?://[^\s"]+'

        # 根据 ID 确定 URL
        if id == 4:
            url = f'https://github.com/gooooooooooooogle/collectSub/raw/refs/heads/main/sub/{this_year}/{this_month_int}/{this_month_int}-{this_day_int}.yaml'
        elif id == 5:
            url = f'https://github.com/beck-8/subs-check/raw/refs/heads/master/config/config.example.yaml'
        elif id == 6:
            url = f'https://github.com/yitong2333/proxy-minging/raw/refs/heads/main/latest.yaml'
        else:
            return current_url

        logging.info(f'{url}')
        links = self.process_links(url, exclusion_patterns, pattern)
        return links if links else current_url

if __name__ == '__main__':
    Update()

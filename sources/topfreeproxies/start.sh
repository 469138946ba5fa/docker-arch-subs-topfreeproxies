#!/usr/bin/env bash
set -euo pipefail

export TERM=xterm   # 设置终端类型，防止 "unknown terminal type" 错误
clear

source "$(command -v common.sh)"

log_info "Starting subs-topfreeproxies..."

# 检测系统架构
ARCH=$(uname -m)

case $ARCH in
    x86_64)
        # 如果是 amd64 架构
        log_info "Running on amd64 architecture"
        cp -fv utils/subconverter/subconverter-amd64 utils/subconverter/subconverter
        cp -fv utils/litespeedtest/lite-linux-amd64 utils/litespeedtest/lite
        cp -fv mihomo-linux-amd64 mihomo-linux
        ;;
    aarch64)
        # 如果是 arm64 架构
        log_info "Running on arm64 architecture"
        cp -fv utils/subconverter/subconverter-aarch64 utils/subconverter/subconverter
        cp -fv utils/litespeedtest/lite-linux-armv8 utils/litespeedtest/lite
        cp -fv mihomo-linux-arm64 mihomo-linux
        ;;
    *)
        log_error "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

#chmod -v +x utils/subconverter/subconverter-amd64 utils/subconverter/subconverter-aarch64
#chmod -v +x utils/litespeedtest/lite-linux-amd64 utils/litespeedtest/lite-linux-armv8
#chmod -v +x mihomo-linux-amd64 mihomo-linux-arm64
chmod -v +x utils/subconverter/subconverter
chmod -v +x utils/litespeedtest/lite
chmod -v +x mihomo-linux

# Initialize mihomo-linux
chmod +x ./mihomo-linux && ./mihomo-linux &
# Setup proxychains
chmod -v 777 /etc/proxychains.conf
cp -fv proxychains.conf /etc/proxychains.conf
# Run mihomo-linux
sudo pkill -f mihomo-linux
./mihomo-linux -f mihomo_config.yml &

python utils/main.py

# 替换协议
#sed -i 's;cipher: chacha20-poly1305;cipher: chacha20-ietf-poly1305;g' Eternity
#sed -i 's;cipher: xchacha20-poly1305;cipher: chacha20-ietf-poly1305;g' Eternity
#sed -i 's;cipher: ss;cipher: chacha20-ietf-poly1305;g' Eternity

# 关闭开启本地 http 协议访问
kill -9 $(ps -ef | grep -v grep | grep "http.server" | awk '{print $2}')
python -m http.server &

# 删除python cache
IFS_BAK=$IFS
IFS=$'\n'
for i in $(find ${SOURCE_PATH} -type d -iname "__pycache__")
do
    rm -frv $i
done
IFS=$IFS_BAK

# 移动 Eternity.txt 到 /root/topfreeproxies 目录让 docker 挂在目录不至于为空
if [ ! -d /root/topfreeproxies ] ; then
    mkdir -pv /root/topfreeproxies/
    cp -fv Eternity.txt /root/topfreeproxies/

    # 清理记录
    rm -frv update/* sub/list/*
    # 使用 Asia/Shanghai 时区获取当前日期的年、月、日
    year=$(TZ="Asia/Shanghai" date +%Y)
    month=$(TZ="Asia/Shanghai" date +%m)
    day=$(TZ="Asia/Shanghai" date +%d)
    
    # 组合目录路径和文件名
    directory="update/${year:2}${month}"
    file="${directory}/${year:2}${month}${day}.txt"
    
    # 创建目录并创建文件
    mkdir -p "$directory"
    touch "$file"
    touch sub/list/00.txt
    log_info "Created directory: $directory"
    log_info "Created file: $file"
fi

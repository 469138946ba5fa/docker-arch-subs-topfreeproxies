#!/usr/bin/env bash
clear
set -e
set -u
echo '本脚本适用于基于debian系列系统'
echo $(pwd)
sudo apt update
sudo apt -y install unar
# unar 解压函数
extract_single_file() {
  # 第一个参数压缩包名
  local ARCHIVE=$1
  # 处理第二个参数提取路径
  local DIRNAME=${2%/*} ; echo ${DIRNAME}
  # 处理第二个参数提取文件名
  local FILE=${2##*/} ; echo ${FILE}
  # 第3个参数文件重命名
  local NEW_FILENAME=$3
  # 第4个参数创建临时目录
  local OUTPUT_DIR=$(mktemp -d)
  # 解压压缩包文件至临时目录
  unar -o "${OUTPUT_DIR}" "${ARCHIVE}" || return $?
  # 移动文件并重命名
  mv -fv "${OUTPUT_DIR}/${DIRNAME}/${FILE}" ./${NEW_FILENAME} ; chmod -v a+x ./${NEW_FILENAME} 
  # 删除临时目录和压缩包
  rm -frv "${OUTPUT_DIR}" "${ARCHIVE}"
}

# 下载 Country.mmdb
rm -fv sources/topfreeproxies/utils/Country.mmdb
wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "https://github.com/Loyalsoldier/geoip/releases/latest/download/Country.mmdb" -O"sources/topfreeproxies/utils/Country.mmdb"
chmod -v a+x "sources/topfreeproxies/utils/Country.mmdb"

# 下载 linux amd64&aarch64 subconverter
wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_linux64.tar.gz" -O"sources/topfreeproxies/utils/subconverter/subconverter_linux64.tar.gz"
wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_aarch64.tar.gz" -O"sources/topfreeproxies/utils/subconverter/subconverter_aarch64.tar.gz"
TEMP=$(mktemp -d)

# 解压 linux amd64 subconverter 文件到临时目录
tar vxzf "sources/topfreeproxies/utils/subconverter/subconverter_linux64.tar.gz" -C $TEMP/
#  将 subconverter/subconverter 文件移动到当前目录
cp -fv $TEMP/subconverter/subconverter "sources/topfreeproxies/utils/subconverter/subconverter-amd64"
cp -frv $TEMP/subconverter "sources/topfreeproxies/utils/"
chmod -v a+x "sources/topfreeproxies/utils/subconverter/subconverter-amd64"
# 删除 linux amd64 subconverter 
rm -frv "sources/topfreeproxies/utils/subconverter/subconverter_linux64.tar.gz" $TEMP/subconverter
# 解压 linux aarch64 subconverter 文件到临时目录
tar vxzf "sources/topfreeproxies/utils/subconverter/subconverter_aarch64.tar.gz" -C $TEMP/
#  将 subconverter/subconverter 文件移动到当前目录
cp -fv $TEMP/subconverter/subconverter "sources/topfreeproxies/utils/subconverter/subconverter-aarch64"
cp -frv $TEMP/subconverter "sources/topfreeproxies/utils/"
chmod -v a+x "sources/topfreeproxies/utils/subconverter/subconverter-aarch64"
# 删除 linux aarch64 subconverter
rm -frv "sources/topfreeproxies/utils/subconverter/subconverter_aarch64.tar.gz" $TEMP

cat << 469138946ba5fa | sudo tee sources/topfreeproxies/utils/subconverter/generate.ini
[transfer]
url=https://raw.githubusercontent.com/SoliSpirit/v2ray-configs/main/all_configs.txt
target=clash
path=./temp
emoje=flase
add_emoji=false
remove_emoji=true
list=true
fdn=true
config=
rename=
include=
exclude=

[url]
url=./temp
target=mixed
path=./temp
emoje=true
add_emojie=true
config=./config/rule.ini
rename=
include=
exclude=

[base64]
url=./temp
target=mixed
path=./temp
emoje=true
add_emojie=true
remove_emoji=false
config=./config/rule.ini
rename=
include=
exclude=

[clash]
url=./temp
target=clash
path=./temp
emoje=true
add_emojie=true
remove_emoji=false
config=./config/rule.ini
rename=
include=
exclude=

[quanx]
url=./temp
target=quanx
path=./temp
emoje=true
add_emojie=true
remove_emoji=false
config=./config/rule.ini
rename=
include=
exclude=

[clash_provider]
url=./temp
target=clash
path=./temp
emoje=true
add_emojie=true
remove_emoji=false
list=true
config=
rename=
include=
exclude=
469138946ba5fa


cat << '469138946ba5fa' | sudo tee sources/topfreeproxies/utils/subconverter/config/rule.ini
[custom]
ruleset=🎯 全球直连,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list
ruleset=🎯 全球直连,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/UnBan.list
ruleset=🛑 广告拦截,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list
ruleset=🍃 应用净化,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list
ruleset=🆎 增强拦截,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyList.list
ruleset=🆎 增强拦截,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyListChina.list
ruleset=🆎 增强拦截,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyPrivacy.list
ruleset=📢 谷歌FCM,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/GoogleFCM.list
ruleset=🎯 全球直连,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list
ruleset=🎥 NETFLIX,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Netflix.list
ruleset=🎥 NETFLIX,https://raw.githubusercontent.com/LM-Firefly/Rules/master/Global-Services/Netflix.list
ruleset=🎥 DisneyP,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/DisneyPlus.list
ruleset=🎥 YouTube,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/YouTube.list
ruleset=📺 哔哩海外,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/BilibiliHMT.list
ruleset=🤖 人工智能,https://raw.githubusercontent.com/juewuy/ShellClash/master/rules/ai.list
ruleset=Ⓜ️ 微软服务,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Microsoft.list
ruleset=🍎 苹果服务,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Apple.list
ruleset=📲 电报消息,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list
ruleset=🎮 外服游戏,https://raw.githubusercontent.com/LM-Firefly/Rules/master/Game.list
ruleset=📺 巴哈姆特,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Bahamut.list
ruleset=🌍 国外媒体,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list
ruleset=🌏 国内媒体,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaMedia.list
ruleset=🎶 网易音乐,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/NetEaseMusic.list
ruleset=🚀 节点选择,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list
ruleset=🎯 全球直连,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list
ruleset=🎯 全球直连,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list
ruleset=🎯 全球直连,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Download.list
ruleset=🎯 全球直连,[]GEOIP,CN
ruleset=🐟 漏网之鱼,[]FINAL

custom_proxy_group=🚀 节点选择`select`[]♻️ 自动选择`[]📺 省流节点`[]👍 高级节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 手动切换`[]DIRECT
custom_proxy_group=🚀 手动切换`select`.*
custom_proxy_group=♻️ 自动选择`url-test`.*`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🛑 广告拦截`select`[]REJECT`[]DIRECT
custom_proxy_group=🍃 应用净化`select`[]REJECT`[]DIRECT
custom_proxy_group=🆎 增强拦截`select`[]DIRECT`[]REJECT
custom_proxy_group=🎮 外服游戏`select`[]🎯 全球直连`[]🎮 游戏节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 手动切换
custom_proxy_group=📲 电报消息`select`[]🚀 节点选择`[]♻️ 自动选择`[]📺 省流节点`[]🇸🇬 新加坡节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 手动切换`[]DIRECT
custom_proxy_group=📢 谷歌FCM`select`[]DIRECT`[]🚀 节点选择`[]🇺🇲 美国节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🚀 手动切换
custom_proxy_group=🎥 NETFLIX`select`[]🎥 流媒体解锁`[]👍 高级节点`[]🇸🇬 新加坡节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 节点选择
custom_proxy_group=🎥 DisneyP`select`[]🎥 流媒体解锁`[]👍 高级节点`[]🇸🇬 新加坡节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 节点选择
custom_proxy_group=🎥 YouTube`select`[]📺 省流节点`[]👍 高级节点`[]🇸🇬 新加坡节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 节点选择
custom_proxy_group=📺 哔哩海外`select`[]🎯 全球直连`[]🇨🇳 台湾节点`[]🇭🇰 香港节点
custom_proxy_group=🌍 国外媒体`select`[]🚀 节点选择`[]♻️ 自动选择`[]📺 省流节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 手动切换`[]DIRECT
custom_proxy_group=🌏 国内媒体`select`[]DIRECT`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🚀 手动切换
custom_proxy_group=🤖 人工智能`select`[]🇺🇲 美国节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🚀 手动切换
custom_proxy_group=Ⓜ️ 微软服务`select`[]DIRECT`[]🚀 节点选择`[]🇺🇲 美国节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🚀 手动切换
custom_proxy_group=🍎 苹果服务`select`[]DIRECT`[]🚀 节点选择`[]🇺🇲 美国节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🚀 手动切换
custom_proxy_group=📺 巴哈姆特`select`[]🇨🇳 台湾节点`[]🚀 节点选择`[]🚀 手动切换`[]DIRECT
custom_proxy_group=🎶 网易音乐`select`[]DIRECT`[]🚀 节点选择`[]♻️ 自动选择`(网易|音乐|解锁|Music|NetEase)
custom_proxy_group=🎯 全球直连`select`[]DIRECT`[]🚀 节点选择`[]♻️ 自动选择
custom_proxy_group=🐟 漏网之鱼`select`[]🚀 节点选择`[]♻️ 自动选择`[]DIRECT`[]📺 省流节点`[]🇭🇰 香港节点`[]🇨🇳 台湾节点`[]🇸🇬 新加坡节点`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]🇺🇲 美国节点`[]🚀 手动切换
custom_proxy_group=🎮 游戏节点`select`(游戏|Game|game|加速)`
custom_proxy_group=🎥 流媒体解锁`select`(NF|奈飞|解锁|Netflix|NETFLIX|Media)
custom_proxy_group=📺 省流节点`url-test`(0\.[0-5]|低倍率|省流|大流量)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=👍 高级节点`url-test`(专线|专用|高级|直连|急速|高倍率|IEPL|IPLC|AIA|CTM|CC|iepl|iplc|aia|ctm|cc|AC)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🇭🇰 香港节点`url-test`(港|HK|Hong Kong)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🇯🇵 日本节点`url-test`(日本|川日|东京|大阪|泉日|埼玉|沪日|深日|[^-]日|JP|Japan)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🇰🇷 韩国节点`url-test`(KR|Korea|KOR|首尔|韩|韓)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🇺🇲 美国节点`url-test`(美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|US|United States)`http://www.gstatic.com/generate_204`300,,150
custom_proxy_group=🇨🇳 台湾节点`url-test`(台|新北|彰化|TW|Taiwan)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🇸🇬 新加坡节点`url-test`(新加坡|坡|狮城|SG|Singapore)`http://www.gstatic.com/generate_204`300,,50

enable_rule_generator=true
overwrite_original_rules=true
469138946ba5fa

# 下载 lite
# github 项目 xxf098/LiteSpeedTest
URI="xxf098/LiteSpeedTest"
# 从 xxf098/LiteSpeedTest github中提取全部 tag 版本，获取最新版本赋值给 VERSION 后打印
VERSION=$(curl -sL "https://github.com/$URI/releases" | grep -oP '(?<=\/releases\/tag\/)[^"]+' | head -n 1)
echo $VERSION
# 获取 linux amd64&armv8 lite
URI_DOWNLOAD="https://github.com/$URI/releases/download/$VERSION/"

# 拼接下载链接 URI_DOWNLOAD 后打印
echo $URI_DOWNLOAD

# 打印下载链接
echo "${URI_DOWNLOAD}lite-linux-amd64-$VERSION.gz"
echo "${URI_DOWNLOAD}lite-linux-armv8-$VERSION.gz"

# 下载 linux amd64 lite
wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "${URI_DOWNLOAD}lite-linux-amd64-$VERSION.gz" -O"sources/topfreeproxies/utils/litespeedtest/lite-linux-amd64-$VERSION.gz"
# 解压 linux amd64 lite
gunzip -v -f "sources/topfreeproxies/utils/litespeedtest/lite-linux-amd64-$VERSION.gz" -c > "sources/topfreeproxies/utils/litespeedtest/lite-linux-amd64"
chmod -v a+x "sources/topfreeproxies/utils/litespeedtest/lite-linux-amd64"
rm -fv "sources/topfreeproxies/utils/litespeedtest/lite-linux-amd64-$VERSION.gz"

# 下载 linux armv8 lite
#wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "${URI_DOWNLOAD}lite-linux-amd64-$VERSION.gz" -O"sources/topfreeproxies/utils/litespeedtest/lite-linux-armv8-$VERSION.gz"

# 解压 linux armv8 lite
#gunzip -v -f "sources/topfreeproxies/utils/litespeedtest/lite-linux-armv8-$VERSION.gz" -c > "sources/topfreeproxies/utils/litespeedtest/lite-linux-armv8"
#chmod -v a+x "sources/topfreeproxies/utils/litespeedtest/lite-linux-armv8"
#rm -fv "sources/topfreeproxies/utils/litespeedtest/lite-linux-armv8-$VERSION.gz"


# 获取 linux amd64&arm64 mihomo
# DOWNLOAD=`curl -SL --connect-timeout 30 -m 60 --speed-time 30 --speed-limit 1 --retry 2 -H "Connection: keep-alive" -k 'https://github.com/MetaCubeX/mihomo/releases' | sed 's;";\n;g;s;tag;download;g' | grep '/download/' | head -n 2 | tail -1`

# github 项目 MetaCubeX/mihomo
URI="MetaCubeX/mihomo"
# 从 MetaCubeX/mihomo github中提取全部 tag 版本，获取最新版本赋值给 VERSION 后打印
VERSION=$(curl -sL "https://github.com/$URI/releases" | grep -oP '(?<=\/releases\/tag\/)[^"]+' | grep -v Prerelease | head -n 1)
echo $VERSION
# 拼接下载链接 URI_DOWNLOAD 后打印 
URI_DOWNLOAD="https://github.com/$URI/releases/download/$VERSION/"
echo $URI_DOWNLOAD

# 打印下载链接
echo "${URI_DOWNLOAD}mihomo-linux-amd64-$VERSION.gz"
echo "${URI_DOWNLOAD}mihomo-linux-arm64-$VERSION.gz"

# 下载 linux amd64&arm64 mihomo
wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "${URI_DOWNLOAD}mihomo-linux-amd64-$VERSION.gz" -O"mihomo-linux-amd64-$VERSION.gz"
wget -t 3 -T 5 --verbose --show-progress=on --progress=bar --no-check-certificate --hsts-file=/tmp/wget-hsts -c "${URI_DOWNLOAD}mihomo-linux-arm64-$VERSION.gz" -O"mihomo-linux-arm64-$VERSION.gz"

# 覆盖解压 linux amd64 mihomo
unar -f mihomo-linux-amd64-$VERSION.gz ; mv -fv mihomo-linux-amd64-$VERSION "sources/topfreeproxies/mihomo-linux-amd64"
chmod -v a+x "sources/topfreeproxies/mihomo-linux-amd64"

# 删除压缩包文件 linux amd64 mihomo
rm -frv mihomo-linux-amd64-$VERSION.gz

# 覆盖解压 linux arm64 mihomo
unar -f mihomo-linux-arm64-$VERSION.gz ; mv -fv mihomo-linux-arm64-$VERSION "sources/topfreeproxies/mihomo-linux-arm64"

chmod -v a+x "sources/topfreeproxies/mihomo-linux-arm64"

# 删除压缩包文件 linux arm64 mihomo
rm -frv mihomo-linux-arm64-$VERSION.gz

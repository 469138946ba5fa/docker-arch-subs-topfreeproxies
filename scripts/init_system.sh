#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/common.sh"

log_info "Starting system initialization..."

# 设置 DEBIAN_FRONTEND 为 noninteractive，这样 tzdata 就不会进入交互模式
#export DEBIAN_FRONTEND=noninteractive
# 设置时区
#export TZ='Asia/Shanghai'
# python 源
#export PIP_CHANNELS='https://pypi.org/simple'
HOSTNAME=$(echo "${PIP_CHANNELS}" | sed -E 's#https?://([^/]+)/.*#\1#')

# linux 包 apt 安装带重试逻辑
retry_linux_apt_install_bulk() {
  local retries=3
  local sleep_seconds=2
  local pkgs=("$@")
  for ((i=1; i<=retries; i++)); do
    log_info "Installing linux packages in bulk (attempt ${i}/${retries})"
    if apt -y install --no-install-recommends "${pkgs[@]}"; then
      log_info "All linux packages installed successfully."
      return 0
    else
      log_warning "Failed attempt ${i} to install linux packages, retrying after ${sleep_seconds}s..."
      sleep $sleep_seconds
    fi
  done
  log_error "Failed to install linux packages after ${retries} attempts."
  exit 1
}

# linux 包 eatmydata aptitude 安装带重试逻辑
retry_linux_eatmydata_aptitude_install_bulk() {
  local retries=3
  local sleep_seconds=2
  local pkgs=("$@")
  for ((i=1; i<=retries; i++)); do
    log_info "Installing linux packages in bulk (attempt ${i}/${retries})"
    if eatmydata aptitude --without-recommends -o APT::Get::Fix-Missing=true -y install "${pkgs[@]}"; then
      log_info "All linux packages installed successfully."
      return 0
    else
      log_warning "Failed attempt ${i} to install linux packages, retrying after ${sleep_seconds}s..."
      sleep $sleep_seconds
    fi
  done
  log_error "Failed to install linux packages after ${retries} attempts."
  exit 1
}

# pip 包安装带重试逻辑
retry_pip_install_bulk() {
  local retries=3
  local sleep_seconds=2
  local pkgs=("$@")
  for ((i=1; i<=retries; i++)); do
    log_info "Installing pip packages in bulk (attempt ${i}/${retries})"
    if python -m pip --no-cache-dir install -v "${pkgs[@]}" --break-system-packages --force-reinstall --ignore-installed --trusted-host ${HOSTNAME} -i ${PIP_CHANNELS}; then
      log_info "All pip packages installed successfully."
      return 0
    else
      log_warning "Failed attempt ${i} to install pip packages, retrying after ${sleep_seconds}s..."
      sleep $sleep_seconds
    fi
  done
  log_error "Failed to install pip packages after ${retries} attempts."
  exit 1
}

# 额外的APT工具和性能优化工具列表
apt_packages=(
  apt-transport-https  # 允许 APT 使用 HTTPS 协议访问软件仓库，提高传输安全性
  ca-certificates      # 根证书包，用于验证 SSL/TLS 链接，确保 HTTPS 通信安全
  aptitude             # APT 的文本界面前端工具，功能比 apt-get 更强大，也便于交互式使用（部分环境下可替代 apt-get）
  eatmydata            # 通过禁用 fsync 操作来加速软件安装过程，适用于临时构建环境以提高性能
)

# 所需系统软件包列表（基础系统工具和常用工具）
eatmydata_aptitude_packages=(
  systemd         # 系统和服务管理器，有时用于基于 systemd 的容器或系统服务管理（在容器中用得较少，但有些基础镜像仍包含）
  tzdata          # 时区数据包，确保系统时间显示正确，并支持多时区设置
  locales         # 本地化支持包，提供各种语言环境，用于设置系统语言和字符编码
  tini            # 一个极简的 init 程序，用于容器中正确管理僵尸进程和信号转发，使容器内部的进程更稳定安全
  git             # 分布式版本控制系统，用于代码管理和拉取远程仓库，支持多人协作、版本历史追踪和快速回滚
  proxychains     # 代理链工具，允许通过预设的多个代理服务器发起连接，从而隐藏真实 IP 并突破局部网络限制
  cron            # Linux 下的定时任务调度器，可根据预设时间自动执行脚本或任务，实现自动化管理
  gzip            # 文件压缩工具，常用于压缩单个文件或数据流，以节省磁盘空间和提高传输效率
  python3         # Python 语言的解释器，支持现代化编程语法，广泛应用于自动化脚本、数据处理和应用开发
  python3-pip     # Python 包管理器，方便安装、升级和管理 Python 第三方库，简化开发环境搭建
  wget            # 命令行下载工具，支持 HTTP、HTTPS 与 FTP 协议，用于从网络上非交互式地下载文件
  sudo            # 权限提升工具，允许经过授权的用户以超级用户或其他用户身份执行命令，保障系统管理安全
  procps          # 一组系统监控与管理工具（例如 ps、top、free），用于查看进程状态、内存占用和其他系统资源
  curl            # 用于进行数据传输和网络请求的工具，支持多种协议（如 HTTP、FTP 等），常用于测试和调试 API
  openssh-server  # OpenSSH 套件中的服务器组件，提供安全的远程登录和加密传输服务，确保远程连接安全
  iputils-ping    # 网络测试工具，通过发送 ICMP 回显请求来检测目标主机的连通性及网络延迟
)

# pip 所需软件包列表
pip_packages=(
  geoip2          # 用于查询 IP 地理位置信息，基于 MaxMind 的 GeoIP2 数据库。常用于网络安全、日志分析等场景
  PyYAML          # Python 的 YAML 解析和生成库，用于处理 YAML 格式的配置文件和数据
  requests        # 极受欢迎的 HTTP 请求库，简化与 Web API 的交互和数据抓取
  paramiko        # 实现 SSH 协议的 Python 库，支持远程连接、执行命令以及安全文件传输
  scp             # 基于 SSH 的文件复制库，一般与 paramiko 搭配使用，实现快速的文件传输功能
  chardet         # 用于检测文本编码的库，可自动识别字符编码，处理多语言文本时非常有用
  Flask           # 轻量级 Web 应用框架，适合快速开发 API 服务或小型 Web 应用
  ruamel.yaml     # 一个功能更强、支持保留注释和顺序的 YAML 解析库，是 PyYAML 的增强替代方案
  httpx           # 支持同步与异步操作的 HTTP 客户端库，设计更现代，扩展性和性能良好
  uvloop          # asyncio 的高性能事件循环实现，用 C 语言编写，可显著提升 I/O 密集型任务的效率
  cython          # Python 的加速工具，通过将 Python 代码转换为 C/C++代码来大幅提高性能
  chardet         # （重复）用于检测文本编码；如果是无意重复，可以只保留一个，如有不同用途，可注明区分
  tqdm            # 呈现进度条显示的库，能轻松集成于长时间运行的迭代任务中，方便实时监控进程
)

# 更新 apt 并安装所需软件包
apt update

# 一次性安装全部包
log_info "Installing linux packages individually with retries..."
retry_linux_apt_install_bulk "${apt_packages[@]}"

# 循环安装各软件包
#for pkg in "${apt_packages[@]}"; do
#  log_info "Installing linux packages individually with retries..."
#  retry_linux_apt_install_bulk "${pkg}"
#done

# 使用 eatmydata 提高安装效率
eatmydata aptitude --without-recommends -o APT::Get::Fix-Missing=true -y update

# 一次性安装全部包
log_info "Installing linux packages individually with retries..."
retry_linux_eatmydata_aptitude_install_bulk "${eatmydata_aptitude_packages[@]}"

# 循环安装各软件包
#for pkg in "${eatmydata_aptitude_packages[@]}"; do
#  log_info "Installing linux packages individually with retries..."
#  retry_linux_eatmydata_aptitude_install_bulk "${pkg}"
#done

ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime
dpkg-reconfigure -f noninteractive tzdata
timedatectl set-timezone ${TZ} || true
timedatectl set-ntp true || true

# 比较当前时间与上海时间
compare_time() {
    current_time=$(date '+%Y-%m-%d %T')
    shanghai_time=$(TZ=${TZ} date '+%Y-%m-%d %T')
    echo "当前时间: ${current_time} <-> 上海时间: ${shanghai_time}"
}
compare_time

# 配置简体中文环境
sed -i 's/^# *\(zh_CN.UTF-8 UTF-8\)/\1/' /etc/locale.gen
locale-gen zh_CN.UTF-8
update-locale LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 LANGUAGE=zh_CN.UTF-8 LC_CTYPE=zh_CN.UTF-8

# 更新 pip 工具包
sudo ln -fsv "$(command -v python3)" /usr/local/bin/python
sudo ln -fsv "$(command -v pip3)" /usr/local/bin/pip
python -m pip --no-cache-dir install -v --upgrade pip --break-system-packages --force-reinstall --ignore-installed --trusted-host ${HOSTNAME} -i ${PIP_CHANNELS}

# 一次性安装全部包
log_info "Installing pip packages individually with retries..."
retry_pip_install_bulk "${pip_packages[@]}"

#log_info "Installing pip packages individually with retries..."
#for pkg in "${pip_packages[@]}"; do
#  retry_pip_install_bulk "$pkg"
#done

# 将激活环境及 locale 配置写入配置文件中，保留长期有效
# 在 docker 非交互式容器中毫无意义，可以没有，但是我希望，这能帮助我理解
cat << '469138946ba5fa' | tee -a /etc/default/locale /etc/environment "${HOME}/.profile"
LANG=zh_CN.UTF-8
LC_ALL=zh_CN.UTF-8
LANGUAGE=zh_CN.UTF-8
LC_CTYPE=zh_CN.UTF-8
469138946ba5fa

# 获取当前 shell 名称
CURRENT_SHELL=$(basename "${SHELL}")

log_info "Detected shell: ${CURRENT_SHELL}"

case "${CURRENT_SHELL}" in
  bash)
    if ! grep -qEi 'LANG|LC_ALL|LANGUAGE|LC_CTYPE' "${HOME}/.bashrc"; then
      log_info "Initializing LANG|LC_ALL|LANGUAGE|LC_CTYPE for bash..."
      # 固化 LANG|LC_ALL|LANGUAGE|LC_CTYPE 环境
      # 在 docker 非交互式容器中毫无意义，可以没有，但是我希望，这能帮助我理解
      cat << '469138946ba5fa' | tee -a /etc/skel/.bashrc "${HOME}/.bashrc"
LANG=zh_CN.UTF-8
LC_ALL=zh_CN.UTF-8
LANGUAGE=zh_CN.UTF-8
LC_CTYPE=zh_CN.UTF-8
469138946ba5fa
    fi
    ;;
  zsh)
    if ! grep -qEi 'LANG|LC_ALL|LANGUAGE|LC_CTYPE' "${HOME}/.zshrc"; then
      log_info "Initializing LANG|LC_ALL|LANGUAGE|LC_CTYPE for zsh..."
      # 固化 LANG|LC_ALL|LANGUAGE|LC_CTYPE 环境
      # 在 docker 非交互式容器中毫无意义，可以没有，但是我希望，这能帮助我理解
      cat << '469138946ba5fa' | tee -a /etc/skel/.zshrc "${HOME}/.zshrc"
LANG=zh_CN.UTF-8
LC_ALL=zh_CN.UTF-8
LANGUAGE=zh_CN.UTF-8
LC_CTYPE=zh_CN.UTF-8
469138946ba5fa
    fi
    ;;
  *)
    log_error "Unsupported shell: ${CURRENT_SHELL}"
    exit 1
    ;;
esac

log_info "System initialization completed."
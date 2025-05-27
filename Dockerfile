# ubuntu 滚动版，追求新颖，不稳定
FROM docker.io/library/ubuntu:rolling

# 构建参数，只有构建阶段有效，构建完成后消失
# init_system.sh 所需临时环境变量
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ='Asia/Shanghai'
ARG PIP_CHANNELS='https://pypi.org/simple'

# 固化运行环境变量，全局构建和容器运行都可用，字符支持，安装目录，以及启动路径
# init_system.sh 所需固化环境 LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 LANGUAGE=zh_CN.UTF-8 LC_CTYPE=zh_CN.UTF-8
ENV LANG=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 \
    LC_CTYPE=zh_CN.UTF-8

# 添加常用LABEL（根据需要修改）添加标题 版本 作者 代码仓库 镜像说明，方便优化
LABEL org.opencontainers.image.description='docker multi-arch subs-topfreeproxies support amd64 and arm64/v8' \
    org.opencontainers.image.title='Multi-arch subs-topfreeproxies' \
    org.opencontainers.image.version='1.0.0' \
    org.opencontainers.image.authors='469138946ba5fa <af5ab649831964@gmail.com>' \
    org.opencontainers.image.source='https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies' \
    org.opencontainers.image.licenses='MIT'

# 设置工作目录 /topfreeproxies 仅用于 topfreeproxies 数据挂载（保持干净）
WORKDIR /topfreeproxies

# 复制所有脚本到 /usr/local/bin（保持工作目录干净）
# 执行安装与配置脚本（全部以 root 执行）
COPY scripts/ /usr/local/bin/
# 复制离线资源如果存在的话
COPY sources/ /

# 执行 初始化 清理 两大流程
# 移除残留脚本 init_system.sh clean.sh
# 保留日志脚本 common.sh
# 启动脚本 "cd /topfreeproxies ; sudo bash start.sh"
# analyze_size.sh 检查安装前、后与清理后的镜像大小记录变化，不过镜像似乎无法优化了，😮‍💨
# 总结：似乎镜像无法优化了，已到绝处，无法逢生，在绝对的力量面前任何优化手段都毫无意义😮‍💨
# analyze_size.sh after-install before-install
# analyze_size.sh after-clean after-install
RUN cd /usr/local/bin/ && \
    chmod -v a+x *.sh && \
    analyze_size.sh before-install && \
    init_system.sh && \
    analyze_size.sh after-install && \
    clean.sh && \
    rm -fv init_system.sh clean.sh && \
    analyze_size.sh after-clean

# 使用 tini 作为入口，调用 entrypoint 脚本或者直接启动 "cd /topfreeproxies ; sudo bash start.sh"
ENTRYPOINT ["tini", "--"]

# 脚本执行
CMD ["cd /topfreeproxies ; sudo bash start.sh"]
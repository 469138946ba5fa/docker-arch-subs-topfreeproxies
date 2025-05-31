# TopFreeProxies
[![GitHub Workflow Status](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/actions/workflows/actions.yml/badge.svg)](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/actions/workflows/actions.yml) 

![Watchers](https://img.shields.io/github/watchers/469138946ba5fa/docker-arch-subs-topfreeproxies) ![Stars](https://img.shields.io/github/stars/469138946ba5fa/docker-arch-subs-topfreeproxies) ![Forks](https://img.shields.io/github/forks/469138946ba5fa/docker-arch-subs-topfreeproxies) ![Vistors](https://visitor-badge.laobi.icu/badge?page_id=469138946ba5fa.docker-arch-subs-topfreeproxies) ![LICENSE](https://img.shields.io/badge/license-CC%20BY--SA%204.0-green.svg)

[仓库介绍](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/tree/master/topfreeproxies#仓库介绍) | [使用方法](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/tree/master/topfreeproxies#使用方法) | [节点信息](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/tree/master/topfreeproxies#节点信息) | [命令推荐](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/tree/master/topfreeproxies#代理命令工具选择) | [软件推荐](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/tree/master/topfreeproxies#客户端选择) | [仓库声明](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies/tree/master/topfreeproxies#仓库声明)

## 仓库介绍
本仓库自动化功能全部基于 `GitHub Actions` 实现，如有需要可以自行 Fork 实现个性化需求，功能配置在 `./utils/config.ini` 配置文件中。

对网络上各免费节点池及博主分享的节点进行测速筛选出较为稳定高速的节点，再导入到仓库中进行分享记录。所筛选的节点链接在仓库 `./sub/sub_list.json` 文件中，其中大部分为其他 `GitHub` 仓库链接，这些链接包含的所有节点会合并在仓库 `./sub/sub_merge.txt` 中。

测速筛选后的节点订阅文件在仓库根目录 `Eterniy.txt`(Base64)。同时在仓库的 `./update` 中保留了原始节点链接的的记录。

订阅转换使用 [subconverter](https://github.com/tindy2013/subconverter) 实现，测速功能使用 [LiteSpeedTest](https://github.com/xxf098/LiteSpeedTest) 在 `GitHub Actions` 环境下实现，所以美国节点较多，不能很好代表国内网络环境下节点可用性

虽然是测速筛选过后的节点，但仍然会出现部分节点不可用的情况，遇到这种情况建议选择 `V2rayN` `Clash Nyanpasu` 之类能自动切换低延迟节点的客户端。

## 使用方法
将以下订阅链接导入相应客户端即可。链接中大部分为 SS 协议节点，少量 Vmess, Trojan ,SSR 协议节点，建议选择协议支持完整的客户端。

- [多协议Base64编码](https://raw.githubusercontent.com/469138946ba5fa/docker-arch-subs-topfreeproxies/master/topfreeproxies/Eterniy.txt)

另有国内加速链接：  

- [多协议Base64编码](https://gh-proxy.com/https://raw.githubusercontent.com/469138946ba5fa/docker-arch-subs-topfreeproxies/master/topfreeproxies/Eternity.txt)  

>`Mihomo`链接所使用的配置在`./mihomo_config.yml`中，有相应配置文件和以国家分类的`proxy-provider`。
>
>需要其它配置可使用订阅转换工具自行转换。
>自用在线订阅转换网址：[sub-web-modify](https://sub.v1.mk/)

## 代理命令工具选择
### 主流代理命令工具
|                            MacOS                             |                            Linux                             |                           Windows                            | 简易描述                                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :------------------------------------------------- |
| [sing-box](https://github.com/SagerNet/sing-box/releases) | [sing-box](https://github.com/SagerNet/sing-box/releases) | [sing-box](https://github.com/SagerNet/sing-box/releases) | 	sing-box 是一个快速、可定制和通用的代理平台。它支持多种协议，包括 Shadowsocks、Vmess、Trojan 等。sing-box 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 mihomo 核心配合使用。此外，它还支持新的 Reality 和 Hysteria2 协议，目前多为自建节点的科学上网爱好者所用。sing-box 工具也可在 Windows、Mac、Android、iOS 和 Apple TV 等平台上使用 |
| [mihomo](https://github.com/MetaCubeX/mihomo/releases) | [mihomo](https://github.com/MetaCubeX/mihomo/releases) | [mihomo](https://github.com/MetaCubeX/mihomo/releases) | mihomo 是一个基于 Go 的规则化隧道。它支持多种协议，包括 Shadowsocks、Vmess、VLESS、WireGuard、Trojan、Trojan-Go、NaïveProxy、Hysteria 和 Reality。用户可以通过订阅、二维码、剪贴板或手动配置导入节点。mihomo 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 sing-box 核心配合使用 |

## 客户端选择
### 主流桌面客户端
|                            MacOS                             |                            Linux                             |                           Windows                            | 简易描述                                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :------------------------------------------------- |
| [sing-box](https://testflight.apple.com/join/AcqO44FH) |                              ×                               |                              ×                               | 	sing-box 是一个快速、可定制和通用的代理平台。它支持多种协议，包括 Shadowsocks、Vmess、Trojan 等。sing-box 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 mihomo 核心配合使用。此外，它还支持新的 Reality 和 Hysteria2 协议，目前多为自建节点的科学上网爱好者所用 |
|                              ×                               |                              ×                               |      [V2rayN](https://github.com/2dust/v2rayN/releases)      | SS, Trojan, Vmess, VLESS协议支持，有测速，测延迟功能，支持订阅，二维码，剪贴板导入及手动配置。                 |
|   [ClashX.Meta](https://github.com/MetaCubeX/ClashX.Meta)   |                              ×                               |                              ×                               | SS, SSR, Trojan, Vmess协议支持，占用资源较少。                   |
|      [V2rayU](https://github.com/yanue/V2rayU/releases)      |                              ×                               |                              ×                               | SS, Trojan, Vmess协议支持，支持订阅，二维码，剪贴板导入，手动配置，二维码分享，与 V2RayN 类似。                        |

### 主流移动客户端
|                          iOS/iPadOS                          |                           Android                            | 简易描述                                                     |
| :----------------------------------------------------------: | :----------------------------------------------------------: | ------------------------------------------------------------ |
| [sing-box](https://testflight.apple.com/join/AcqO44FH) | [sing-box](https://github.com/SagerNet/sing-box/releases) | sing-box 是一个快速、可定制和通用的代理平台。它支持多种协议，包括 Shadowsocks、Vmess、Trojan 等。sing-box 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 mihomo 核心配合使用。此外，它还支持新的 Reality 和 Hysteria2 协议，目前多为自建节点的科学上网爱好者所用。sing-box 免费使用 |

## 仓库声明
订阅节点仅作学习交流使用，只是对网络上节点的优选排序，用于查找资料，学习知识，不做任何违法行为。所有资源均来自互联网，仅供大家交流学习使用，出现违法问题概不负责。

## 星标统计
<a href="https://star-history.com/#469138946ba5fa/docker-arch-subs-topfreeproxies&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=469138946ba5fa/docker-arch-subs-topfreeproxies&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=469138946ba5fa/docker-arch-subs-topfreeproxies&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=469138946ba5fa/docker-arch-subs-topfreeproxies&type=Date" />
  </picture>
</a>

## 节点信息
### 所有节点
合并节点总数: `6454`
[节点链接](https://raw.githubusercontent.com/469138946ba5fa/docker-arch-subs-topfreeproxies/master/topfreeproxies/sub/sub_merge_base64.txt)

### 节点来源
- [crazygeeky](https://www.crazygeeky.com/), 节点数量: `28`
- [Fukki-Z/nodefree](https://nodefree.org/f/freenode|Fukki-Z/nodefree|FiFier/v2rayShare), 节点数量: `1`
- [nexthiddify.github.io](https://nexthiddify.github.io), 节点数量: `346`
- [www.freev2raynode.com](https://www.freev2raynode.com/), 节点数量: `346`
- [gooooooooooooogle/collectSub](https://github.com/gooooooooooooogle/collectSub), 节点数量: `6708`
- [github.com/beck-8](https://github.com/beck-8/subs-check/raw/refs/heads/master/config/config.example.yaml), 节点数量: `7193`
- [yitong2333/proxy-minging](https://github.com/yitong2333/proxy-minging/raw/refs/heads/main/latest.yaml), 节点数量: `7566`
- [glados](https://update.glados-config.com), 节点数量: `6`
- [@lzjjjjjjjjjjj](https://t.me/lzjjjjjjjjjjj), 节点数量: `4`
- [Leon406/SubCrawler](https://github.com/Leon406/SubCrawler), 节点数量: `335`
- [ermaozi/get_subscribe](https://github.com/ermaozi/get_subscribe), 节点数量: `18`
- [Ruk1ng001/freeSub](https://github.com/Ruk1ng001/freeSub), 节点数量: `652`
- [xrayfree/free-ssr-ss-v2ray-vpn-clash](https://github.com/xrayfree/free-ssr-ss-v2ray-vpn-clash), 节点数量: `98`
- [aiboboxx/v2rayfree](https://github.com/aiboboxx/v2rayfree), 节点数量: `56`
- [Alvin9999/pac2](https://github.com/Alvin9999/pac2), 节点数量: `1000`
- [peasoft/NoMoreWalls](https://github.com/peasoft/NoMoreWalls), 节点数量: `314`
- [Misaka-blog/chromego_merge](https://github.com/Misaka-blog/chromego_merge), 节点数量: `6088`
- [vxiaov/free_proxies](https://github.com/vxiaov/free_proxies), 节点数量: `30`
- [mfuu/v2ray](https://github.com/mfuu/v2ray), 节点数量: `866`
- [mahdibland/V2RayAggregator|get_v2](https://github.com/mahdibland/V2RayAggregator|get_v2), 节点数量: `12919`
- [SnapdragonLee/SystemProxy](https://github.com/SnapdragonLee/SystemProxy), 节点数量: `1028`
- [chengaopan/AutoMergePublicNodes](https://github.com/chengaopan/AutoMergePublicNodes), 节点数量: `314`
- [docker-arch-subs-topfreeproxies](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies), 节点数量: `26`
- [Barabama/FreeNodes](https://github.com/Barabama/FreeNodes), 节点数量: `135`
- [owner_local](http://192.168.255.99:8001), 节点数量: `1`
- [Jsnzkpg/Jsnzkpg](https://github.com/Jsnzkpg/Jsnzkpg), 节点数量: `5`
- [https://fofa.info](https://fofa.info/result?qbase64=Ym9keT0i6Ieq5Yqo5oqT5Y+WdGfpopHpgZPjgIHorqLpmIXlnLDlnYDjgIHlhazlvIDkupLogZTnvZHkuIrnmoRzc+OAgXNzcuOAgXZtZXNz44CBdHJvamFu6IqC54K55L+h5oGvIg==), 节点数量: `1`
- [YasserDivaR/pr0xy](https://github.com/YasserDivaR/pr0xy), 节点数量: `1`

### 高速节点
高速节点数量: `14`
<details>
  <summary>展开复制节点</summary>

    trojan://0b1371aa-649d-41dc-9126-338c87936500@95.164.33.62:443?allowInsecure=1&sni=sourceforge.net&ws=1&wspath=%2525252Fwebsocket#_US_%E7%BE%8E%E5%9B%BD%202
    vmess://eyJ2IjoiMiIsInBzIjoiX1VTX+e+juWbvSIsImFkZCI6InJ1c3NpYS5jb20iLCJwb3J0IjoiODg4MCIsInR5cGUiOiJub25lIiwiaWQiOiI2NGE1N2I1Zi00NWUwLTQwYzMtODMxNi05N2QwZmY1M2ZkOTYiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL2FwaS92My9kb3dubG9hZC5nZXRGaWxlIiwiaG9zdCI6InNzc3ViLnYyLjAwMS5zc3JzdWIuY29tIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiX0NOX+S4reWbvS0+8J+HuvCfh7hfVVNf576O5Zu9IDIiLCJhZGQiOiJkYXRhLXVzLXYxLnNod2pma3cuY24iLCJwb3J0IjoiMjA0MDEiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjE0NzhlMjQtNDkxNi0zYWJlLThmMTctMTU5MzEwMTJlY2JlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9kZWJpYW4iLCJob3N0IjoiZGF0YS11cy12MS5zaHdqZmt3LmNuIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiX0NOX+S4reWbvS0+8J+HuvCfh7hfVVNf576O5Zu9IiwiYWRkIjoiMTAzLjE4NC40NS4xOTEiLCJwb3J0IjoiMjA5NSIsInR5cGUiOiJub25lIiwiaWQiOiJiM2M3NmYwZS1mMmM2LTQ1MTgtOWRkYy1iMjFiMzMzOWQ1NTAiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL2IzYzc2ZjBlLWYyYzYtNDUxOC05ZGRjLWIyMWIzMzM5ZDU1MC12bSIsImhvc3QiOiJybi55aWNhbm55LmNvbSIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiX1VTX+e+juWbvSAzIiwiYWRkIjoiY2ZjZG4xLnNhbmZlbmNkbjkuY29tIiwicG9ydCI6IjIwOTUiLCJ0eXBlIjoibm9uZSIsImlkIjoiZTgzZjI3YzQtYjFjYi00MzExLTkwN2MtZWExNmQzMjM0OGUxIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii92aWRlby9xWVp1ZTR6YVdTIiwiaG9zdCI6InVzODJwUnp4RE1iLmZ6YnFmcnNlLnh5eiIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpsV2FHUFZGam1uYWc@205.134.180.139:443#_US_%E7%BE%8E%E5%9B%BD%204
    vmess://eyJ2IjoiMiIsInBzIjoiX0NOX+S4reWbvS0+8J+HuvCfh7hfVVNf576O5Zu9IDMiLCJhZGQiOiIxODMuMjQwLjE3OS4yMDciLCJwb3J0IjoiMzAwMTMiLCJ0eXBlIjoibm9uZSIsImlkIjoiNWJkNTg5OWEtNGI3OC00ZDc1LTg1NzAtNGQyMWI0MzQyMmM0IiwiYWlkIjoiMCIsIm5ldCI6InRjcCIsInBhdGgiOiIvdmlkZW8vcVladWU0emFXUyIsImhvc3QiOiJ1czgycFJ6eERNYi5memJxZnJzZS54eXoiLCJ0bHMiOiIifQ==
    trojan://TNDSJfNv@36.151.195.48:4603?allowInsecure=0#_GB_%E8%8B%B1%E5%9B%BD
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.195:443#_GB_%E8%8B%B1%E5%9B%BD%202
    vmess://eyJ2IjoiMiIsInBzIjoiX1JVX+S/hOe9l+aWr+iBlOmCpiIsImFkZCI6IjQ1LjEzNi4yNDUuMjQwIiwicG9ydCI6IjEyOTEwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjgyNTljYjFjLWRkNmMtNDczOS05Yzg4LWFmNTUwZDk3NzUyNSIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6IiIsInRscyI6InRscyJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNToxWVBRMVppbXpRcDJmaTRJcG5BSDVp@103.229.81.118:443#_NL_%E8%8D%B7%E5%85%B0
    ss://YWVzLTI1Ni1nY206VEV6amZBWXEySWp0dW9T@51.77.53.200:6679#_PL_%E6%B3%A2%E5%85%B0
    trojan://telegram-id-privatevpns@18.199.1.86:22222?allowInsecure=1&sni=trojan.burgerip.co.uk#_DE_%E5%BE%B7%E5%9B%BD
    

</details>

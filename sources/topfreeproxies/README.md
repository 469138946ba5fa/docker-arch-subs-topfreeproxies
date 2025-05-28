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
合并节点总数: `5216`
[节点链接](https://raw.githubusercontent.com/469138946ba5fa/docker-arch-subs-topfreeproxies/master/topfreeproxies/sub/sub_merge_base64.txt)

### 节点来源
- [crazygeeky](https://www.crazygeeky.com/), 节点数量: `30`
- [Fukki-Z/nodefree](https://nodefree.org/f/freenode|Fukki-Z/nodefree|FiFier/v2rayShare), 节点数量: `74`
- [nexthiddify.github.io](https://nexthiddify.github.io), 节点数量: `208`
- [www.freev2raynode.com](https://www.freev2raynode.com/), 节点数量: `208`
- [gooooooooooooogle/collectSub](https://github.com/gooooooooooooogle/collectSub), 节点数量: `6645`
- [github.com/beck-8](https://github.com/beck-8/subs-check/raw/refs/heads/master/config/config.example.yaml), 节点数量: `6361`
- [yitong2333/proxy-minging](https://github.com/yitong2333/proxy-minging/raw/refs/heads/main/latest.yaml), 节点数量: `7658`
- [glados](https://update.glados-config.com), 节点数量: `6`
- [@lzjjjjjjjjjjj](https://t.me/lzjjjjjjjjjjj), 节点数量: `8`
- [Leon406/SubCrawler](https://github.com/Leon406/SubCrawler), 节点数量: `283`
- [ermaozi/get_subscribe](https://github.com/ermaozi/get_subscribe), 节点数量: `6`
- [Ruk1ng001/freeSub](https://github.com/Ruk1ng001/freeSub), 节点数量: `272`
- [xrayfree/free-ssr-ss-v2ray-vpn-clash](https://github.com/xrayfree/free-ssr-ss-v2ray-vpn-clash), 节点数量: `52`
- [aiboboxx/v2rayfree](https://github.com/aiboboxx/v2rayfree), 节点数量: `51`
- [Alvin9999/pac2](https://github.com/Alvin9999/pac2), 节点数量: `1000`
- [peasoft/NoMoreWalls](https://github.com/peasoft/NoMoreWalls), 节点数量: `276`
- [Misaka-blog/chromego_merge](https://github.com/Misaka-blog/chromego_merge), 节点数量: `6206`
- [vxiaov/free_proxies](https://github.com/vxiaov/free_proxies), 节点数量: `18`
- [mfuu/v2ray](https://github.com/mfuu/v2ray), 节点数量: `764`
- [mahdibland/V2RayAggregator|get_v2](https://github.com/mahdibland/V2RayAggregator|get_v2), 节点数量: `11997`
- [SnapdragonLee/SystemProxy](https://github.com/SnapdragonLee/SystemProxy), 节点数量: `626`
- [chengaopan/AutoMergePublicNodes](https://github.com/chengaopan/AutoMergePublicNodes), 节点数量: `276`
- [docker-arch-subs-topfreeproxies](https://github.com/469138946ba5fa/docker-arch-subs-topfreeproxies), 节点数量: `594`
- [Barabama/FreeNodes](https://github.com/Barabama/FreeNodes), 节点数量: `137`
- [owner_local](http://192.168.255.99:8001), 节点数量: `1`
- [Jsnzkpg/Jsnzkpg](https://github.com/Jsnzkpg/Jsnzkpg), 节点数量: `1`
- [https://fofa.info](https://fofa.info/result?qbase64=Ym9keT0i6Ieq5Yqo5oqT5Y+WdGfpopHpgZPjgIHorqLpmIXlnLDlnYDjgIHlhazlvIDkupLogZTnvZHkuIrnmoRzc+OAgXNzcuOAgXZtZXNz44CBdHJvamFu6IqC54K55L+h5oGvIg==), 节点数量: `1`
- [YasserDivaR/pr0xy](https://github.com/YasserDivaR/pr0xy), 节点数量: `1`

### 高速节点
高速节点数量: `298`
<details>
  <summary>展开复制节点</summary>

    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@p231.panda004.net:11389#%E9%9F%A9%E5%9B%BD
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@149.22.87.241:443#JP-149.22.87.241-0393
    ssr://anAtYW00OC02LmVxbm9kZS5uZXQ6ODA4MTpvcmlnaW46YWVzLTI1Ni1jZmI6dGxzMS4yX3RpY2tldF9hdXRoOlpVRnZhMkpoUkU0Mi8_Z3JvdXA9VTFOU1VISnZkbWxrWlhJJnJlbWFya3M9U2xBdE16VXVOekl1TlM0Mk1pMHdNems1Jm9iZnNwYXJhbT0mcHJvdG9wYXJhbT0
    trojan://0a335fd6-be0b-11ec-8dfa-f23c91cfbbc9@eac1462b-swxgg0-sxkd63-17z95.cu.plebai.net:15229?allowInsecure=0&sni=eac1462b-swxgg0-sxkd63-17z95.cu.plebai.net#HK%E9%A6%99%E6%B8%AF%28mibei77.com%20%E7%B1%B3%E8%B4%9D%E8%8A%82%E7%82%B9%E5%88%86%E4%BA%AB%29%2015
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@149.22.87.204:443#JP-149.22.87.204-0398
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4yMDIuNzktNTI4MyIsImFkZCI6ImE0ZTljNWY0LXN2MHhzMC1zdjM3Z20tODFudi5oay5wNXB2LmNvbSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI0N2U5MWZiNi0yNWI4LWRmNTItYmMxOC0zY2RjODU0ODE5MmYiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJhNGU5YzVmNC1zdjB4czAtc3YzN2dtLTgxbnYuaGsucDVwdi5jb20iLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi5Lit5Zu9IC0g6aaZ5rivIC0gQ1RHIFNlcnZlciBMdGQuIC0gNSIsImFkZCI6IjEyMC4xOTguNDQuMTI2IiwicG9ydCI6IjQ3ODgzIiwidHlwZSI6Im5vbmUiLCJpZCI6IjQxODA0OGFmLWEyOTMtNGI5OS05YjBjLTk4Y2EzNTgwZGQyNCIsImFpZCI6IjY0IiwibmV0IjoidGNwIiwicGF0aCI6Ii8iLCJob3N0IjoiYTRlOWM1ZjQtc3YweHMwLXN2MzdnbS04MW52LmhrLnA1cHYuY29tIiwidGxzIjoiIn0=
    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@p227.panda004.net:4857#KR-125.141.26.12-5423
    trojan://RlzoEILU@36.156.102.115:34041?allowInsecure=1&sni=cdn.egvra.cn#%E4%B8%AD%E5%9B%BD%20-%20%E9%A6%99%E6%B8%AF%20-%20Hong%20Kong%20Broadband%20Network%20Ltd%20-%207
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4yMDIuNzktMDQzMSIsImFkZCI6IjQwODdkYzFhLXN2MnNnMC1zd3FpeHUtMWx1cXMuaGsucDVwdi5jb20iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiNzg4MzI4ZWUtZDQ5Zi0xMWVmLWJkOTctZjIzYzkxNjRjYTVkIiwiYWlkIjoiMiIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiNDA4N2RjMWEtc3Yyc2cwLXN3cWl4dS0xbHVxcy5oay5wNXB2LmNvbSIsInRscyI6IiJ9
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@149.22.87.240:443#JP-149.22.87.240-0395
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4xMzkuMTUyLTUyNzkiLCJhZGQiOiJjODU3Y2VmOS1zdjJzZzAtc3duaTd1LTFyM3k4LmhrMy5wNXB2LmNvbSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiIwYTdhMjQ3OC1mNGQ2LTExZWUtOTYyOC1mMjNjOTE2NGNhNWQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJjODU3Y2VmOS1zdjJzZzAtc3duaTd1LTFyM3k4LmhrMy5wNXB2LmNvbSIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4xMzkuMTUyLTUyODQiLCJhZGQiOiJiZDU3MDliNC1zdjB4czAtc3duaTd1LTFyM3k4LmhrMy5wNXB2LmNvbSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiIwYTdhMjQ3OC1mNGQ2LTExZWUtOTYyOC1mMjNjOTE2NGNhNWQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJiZDU3MDliNC1zdjB4czAtc3duaTd1LTFyM3k4LmhrMy5wNXB2LmNvbSIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpOazlhc2dsRHpIemprdFZ6VGt2aGFB@arxfw2b78fi2q9hzylhn.freesocks.work:443#JP%E6%97%A5%E6%9C%AC%28mibei77.com%20%E7%B1%B3%E8%B4%9D%E8%8A%82%E7%82%B9%E5%88%86%E4%BA%AB%29
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4xMzkuMTUyLTA0MzAiLCJhZGQiOiJiOGZmY2RhMy1zdjJzZzAtc3YzN2dtLTgxbnYuaGszLnA1cHYuY29tIiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjQ3ZTkxZmI2LTI1YjgtZGY1Mi1iYzE4LTNjZGM4NTQ4MTkyZiIsImFpZCI6IjIiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6ImI4ZmZjZGEzLXN2MnNnMC1zdjM3Z20tODFudi5oazMucDVwdi5jb20iLCJ0bHMiOiIifQ==
    trojan://dQUWbcwECl@20.191.138.47:443?allowInsecure=0&sni=automq4-proxy.automq-sg.com#SG-20.191.138.47-5436
    vmess://eyJ2IjoiMiIsInBzIjoiSEvpppnmuK8obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAxNiIsImFkZCI6IjEyMC4yMzIuMTUzLjEyMyIsInBvcnQiOiI1MDM1MiIsInR5cGUiOiJub25lIiwiaWQiOiI0MTgwNDhhZi1hMjkzLTRiOTktOWIwYy05OGNhMzU4MGRkMjQiLCJhaWQiOiI2NCIsIm5ldCI6InRjcCIsInBhdGgiOiIvIiwiaG9zdCI6ImF1dG9tcTQtcHJveHkuYXV0b21xLXNnLmNvbSIsInRscyI6IiJ9
    trojan://dQUWbcwECl@automq4-proxy.automq-sg.com:443?allowInsecure=0#SG-20.191.138.47-5212
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4yMDIuNzktNTI4MiIsImFkZCI6IjNjYjM0YmVkLXN1Y3Y0MC1zd3I2MmwtbGo3ei5oay5wNXB2LmNvbSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiIzMzFjYWU5MC1mN2U5LTExZWQtYjRlMi1mMjNjOTEzYzhkMmIiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiIzY2IzNGJlZC1zdWN2NDAtc3dyNjJsLWxqN3ouaGsucDVwdi5jb20iLCJ0bHMiOiIifQ==
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@38.60.247.151:989#%E4%BF%9D%E5%8A%A0%E5%88%A9%E4%BA%9A%20-%20%E7%B4%A2%E8%8F%B2%E4%BA%9E%20-%20Kaopu%20Cloud%20HK%20Limited%20-%201
    trojan://RlzoEILU@36.156.102.123:50723?allowInsecure=1&sni=36.156.102.123#%E4%B8%AD%E5%9B%BD%20-%20%E9%A6%99%E6%B8%AF%20-%20Hong%20Kong%20Broadband%20Network%20Ltd%20-%206
    vmess://eyJ2IjoiMiIsInBzIjoiSEstMS42NS4xMzkuMTUyLTA0MjkiLCJhZGQiOiJmNDJmNDZjYS1zdjB4czAtc3YzN2dtLTgxbnYuaGszLnA1cHYuY29tIiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjQ3ZTkxZmI2LTI1YjgtZGY1Mi1iYzE4LTNjZGM4NTQ4MTkyZiIsImFpZCI6IjIiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6ImY0MmY0NmNhLXN2MHhzMC1zdjM3Z20tODFudi5oazMucDVwdi5jb20iLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiSEvpppnmuK8obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAzMiIsImFkZCI6IjE4My4yMzcuODQuNTMiLCJwb3J0IjoiNTUwMDIiLCJ0eXBlIjoibm9uZSIsImlkIjoiNDE4MDQ4YWYtYTI5My00Yjk5LTliMGMtOThjYTM1ODBkZDI0IiwiYWlkIjoiMCIsIm5ldCI6InRjcCIsInBhdGgiOiIvIiwiaG9zdCI6ImY0MmY0NmNhLXN2MHhzMC1zdjM3Z20tODFudi5oazMucDVwdi5jb20iLCJ0bHMiOiIifQ==
    ss://YWVzLTI1Ni1nY206ZGQxZTU2MmEtYTBmYy00ZDAzLTkxZjEtMjI2OGJiMTUzZGY2@jsyd.piaomiaoxu.net:46131#HK%E9%A6%99%E6%B8%AF%28mibei77.com%20%E7%B1%B3%E8%B4%9D%E8%8A%82%E7%82%B9%E5%88%86%E4%BA%AB%29%208
    vmess://eyJ2IjoiMiIsInBzIjoiSEvpppnmuK8obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyIiwiYWRkIjoiMTgzLjIzNi41MS4zOCIsInBvcnQiOiI0MTAyNCIsInR5cGUiOiJub25lIiwiaWQiOiI0MTgwNDhhZi1hMjkzLTRiOTktOWIwYy05OGNhMzU4MGRkMjQiLCJhaWQiOiIwIiwibmV0IjoidGNwIiwicGF0aCI6Ii8iLCJob3N0IjoiZjQyZjQ2Y2Etc3YweHMwLXN2MzdnbS04MW52LmhrMy5wNXB2LmNvbSIsInRscyI6IiJ9
    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@221.150.109.89:11389#KR-221.150.109.89-0416
    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@p141.panda001.net:4652#KR-218.237.185.230-5288
    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@125.141.26.12:4857#%E9%9F%A9%E5%9B%BD%20-%20Gwanak-gu%20-%20Korea%20Telecom%20-%201
    ss://YWVzLTI1Ni1nY206Njc1N2ZmOTM3ZWM0ZDBkZQ@103.115.17.16:2015#%E9%9F%A9%E5%9B%BD%20-%20%E9%A6%96%E5%B0%94%E7%89%B9%E5%88%AB%E5%B8%82%20-%20Baxet%20Group%20Inc.%20-%207
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@38.54.57.90:989#%E5%B7%B4%E8%A5%BF%20-%20Sao%20Paulo%20-%20Kaopu%20Cloud%20HK%20Limited%20-%201
    vmess://eyJ2IjoiMiIsInBzIjoiSEvpppnmuK8obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAxOSIsImFkZCI6InYxMi5oZWR1aWFuLmxpbmsiLCJwb3J0IjoiMzA4MTIiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2JiM2Y4NzctZDFmYi0zNDRjLTg3YTktZDE1M2JmZmQ1NDg0IiwiYWlkIjoiMiIsIm5ldCI6IndzIiwicGF0aCI6Ii9vb29vIiwiaG9zdCI6Im9jYmMuY29tIiwidGxzIjoiIn0=
    trojan://58dcd460-65df-47b1-b062-517df30bef29@ca.liangyuandian.top:443?allowInsecure=0#JP-18.182.139.34-2558
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@45.66.134.176:809#JP-45.66.134.176-0148
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@hkvip105.qlgq.fun:41116?allowInsecure=1&sni=hkvip105.qlgq.fun#%E9%A6%99%E6%B8%AF%20109%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@hkvip104.qlgq.fun:45136?allowInsecure=1&sni=hkvip104.qlgq.fun#%E9%A6%99%E6%B8%AF%20107%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo5MzdmNmI2MTY4YjY@103.137.62.194:443/?plugin=v2ray-plugin%3Bmode%3Dwebsocket%3Btls%3Bmux%3D4%3Bhost%3Dwt8v1.kvote.cn%3Bpath%3D%2Foqhygtklyhwi%3Bmux%3Dmux%3D4%3B%3B#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E5%8F%B0%E6%B9%BE%2001
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@hkvip103.qlgq.fun:52249?allowInsecure=1&sni=hkvip103.qlgq.fun#%E9%A6%99%E6%B8%AF%20105%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@hkvip102.qlgq.fun:32249?allowInsecure=1&sni=hkvip102.qlgq.fun#%E9%A6%99%E6%B8%AF%20103%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@hkvip101.qlgq.fun:12249?allowInsecure=1&sni=hkvip101.qlgq.fun#%E9%A6%99%E6%B8%AF%20101%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@sgvip101.qlgq.fun:11223?allowInsecure=1&sni=sgvip101.qlgq.fun#%E6%96%B0%E5%8A%A0%E5%9D%A1%20101%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    vmess://eyJ2IjoiMiIsInBzIjoi44CQ6auY57qn44CR8J+HuPCfh6zmlrDliqDlnaEgLSDmu5Hmoq/kupEiLCJhZGQiOiJodHN1Yi0yMDI0Ljg5OTY5Njk5OC54eXoiLCJwb3J0IjoiMjAwMTEiLCJ0eXBlIjoibm9uZSIsImlkIjoiZWI5YjZkMDctODY0NC00MzdmLWExYzUtZGJlZDM3OGQzOGVkIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8yMDI0IiwiaG9zdCI6Inl5eXQtc2ctMjAyNC5tb2ZheHcudG9wIiwidGxzIjoiIn0=
    trojan://48a08cee-ff3a-3f37-ac64-58ba43e860d4@gyl.58n.net:20309?allowInsecure=1&sni=z309.hongkongnode.top#%E5%B9%BF%E6%B8%AF%E2%80%A2%E9%A6%99%E6%B8%AF309%E2%80%A2%E4%B8%93%E7%BA%BF%20-%20%E9%A3%9E%E7%BF%94%E5%90%A7
    trojan://48a08cee-ff3a-3f37-ac64-58ba43e860d4@gy.58n.net:20299?allowInsecure=1&sni=x299.flybar.work#%E4%B8%AD%E8%BD%AC%E2%80%A2%E6%96%B0%E5%8A%A0%E5%9D%A1299%E2%80%A2%E9%AB%98%E9%80%9F%20-%20%E9%A3%9E%E7%BF%94%E5%90%A7
    vmess://eyJ2IjoiMiIsInBzIjoi5paw5Yqg5Z2hIDIgR1BUL05ldGZsaXggLSDopb/nk5znmq7mmK/nnJ/nmoTnmq4iLCJhZGQiOiJ4Z2N0YS5keDAwMi50b3AiLCJwb3J0IjoiMTk4NDIiLCJ0eXBlIjoibm9uZSIsImlkIjoiMDc1YzE2ZTYtNjdjYi0zNTk5LWFhNWEtMDI1YjQ3OGRiMTU2IiwiYWlkIjoiMCIsIm5ldCI6InRjcCIsInBhdGgiOiIvIiwiaG9zdCI6IngyOTkuZmx5YmFyLndvcmsiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi5paw5Yqg5Z2hIDEgR1BUL05ldGZsaXggIC0g6KW/55Oc55qu5piv55yf55qE55quIiwiYWRkIjoieGdjbWEuZHgwMDIudG9wIiwicG9ydCI6IjE5ODQxIiwidHlwZSI6Im5vbmUiLCJpZCI6IjA3NWMxNmU2LTY3Y2ItMzU5OS1hYTVhLTAyNWI0NzhkYjE1NiIsImFpZCI6IjAiLCJuZXQiOiJ0Y3AiLCJwYXRoIjoiLyIsImhvc3QiOiJ4Mjk5LmZseWJhci53b3JrIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZpcOKRoF3ikaDpppnmuK8gLSBNRyBOZXR3b3JrIiwiYWRkIjoiMTIubWFtYW1hamQuc2l0ZSIsInBvcnQiOiIyMzYxMiIsInR5cGUiOiJub25lIiwiaWQiOiJlNGY3NGM3NS0wZjc2LTNmNjEtODhjNy0xMTM1NDc5NWU3ZTMiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiIxMi5tYW1hbWFqZC5zaXRlIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZpcOKRoF3pn6nlm70xIC0gTUcgTmV0d29yayIsImFkZCI6IjE0Lm1hbWFtYWpkLnNpdGUiLCJwb3J0IjoiMjM2MTQiLCJ0eXBlIjoibm9uZSIsImlkIjoiZTRmNzRjNzUtMGY3Ni0zZjYxLTg4YzctMTEzNTQ3OTVlN2UzIiwiYWlkIjoiMiIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiMTQubWFtYW1hamQuc2l0ZSIsInRscyI6IiJ9
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@154.90.62.168:989#%E9%9F%A9%E5%9B%BD%20-%20%E9%A6%96%E5%B0%94%E7%89%B9%E5%88%AB%E5%B8%82%20-%20Kaopu%20Cloud%20HK%20Limited%20-%202
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk002.dogsvip.site:16002#Hong%20Kong%E4%B8%A802
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk003.dogsvip.site:16003#Hong%20Kong%E4%B8%A803
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk004.dogsvip.site:16004#Hong%20Kong%E4%B8%A804
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk005.dogsvip.site:16005#Hong%20Kong%E4%B8%A805
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk006.dogsvip.site:16006#Hong%20Kong%E4%B8%A806
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk007.dogsvip.site:16007#Hong%20Kong%E4%B8%A807
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk008.dogsvip.site:16008#Hong%20Kong%E4%B8%A808
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk009.dogsvip.site:16009#Hong%20Kong%E4%B8%A809
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk010.dogsvip.site:16010#Hong%20Kong%E4%B8%A810
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@tw001.dogsvip.site:17001#Taiwan%E4%B8%A801
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@tw002.dogsvip.site:17002#Taiwan%E4%B8%A802
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@tw003.dogsvip.site:17003#Taiwan%E4%B8%A803
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@tw004.dogsvip.site:17004#Taiwan%E4%B8%A804
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@tw005.dogsvip.site:17005#Taiwan%E4%B8%A805
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@sg001.dogsvip.site:18001#Singapore%E4%B8%A801
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@sg002.dogsvip.site:18002#Singapore%E4%B8%A802
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@sg003.dogsvip.site:18003#Singapore%E4%B8%A803
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@sg004.dogsvip.site:18004#Singapore%E4%B8%A804
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@sg005.dogsvip.site:18005#Singapore%E4%B8%A805
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@jp001.dogsvip.site:19001#Japan%E4%B8%A801
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@jp002.dogsvip.site:19002#Japan%E4%B8%A802
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@jp003.dogsvip.site:19004#Japan%E4%B8%A803
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@jp004.dogsvip.site:19004#Japan%E4%B8%A804
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@jp005.dogsvip.site:19004#Japan%E4%B8%A805
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@kr001.dogsvip.site:21001#South%20Korea%E4%B8%A801
    vmess://eyJ2IjoiMiIsInBzIjoiSEvpppnmuK8obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyMyA0IiwiYWRkIjoiZ3RtMS5rdG13YW4ubmV0IiwicG9ydCI6IjEyODk4IiwidHlwZSI6Im5vbmUiLCJpZCI6ImQxMDQxMzFlLTQ0MjgtNGViOC04ZmNhLWM1NWJlNTUwNDkyZiIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6Imd0bTEua3Rtd2FuLm5ldCIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpsanFkYWx1MTMuLg@20.24.66.53:8313#HK-20.24.66.53-0004
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpsanFkYWx1MTMuLg@20.243.75.205:8313#JP-20.243.75.205-0005
    vmess://eyJ2IjoiMiIsInBzIjoiSlAtMTk0LjE1Ni4yMzEuMzUtMDA0OCIsImFkZCI6IjE5NC4xNTYuMjMxLjM1IiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6Ijc3NWVkOTJhLTRjODctNDExMS1hNmNmLWZjNWUwYWMxOGFlNSIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvaW1hZ2VzIiwiaG9zdCI6IjE5NC4xNTYuMjMxLjM1IiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiSEstNDUuODIuNzguMTUxLTAwNzAiLCJhZGQiOiI0NS44Mi43OC4xNTEiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiNjFkYWIwNjUtN2ZjNy00ZDU3LWE5NTItNThiNDEyNTBkNzY2IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiIiwidGxzIjoiIn0=
    trojan://cc55e294-b76f-425a-9301-c18afbecaa22@jp.liangyuandian.top:443?allowInsecure=0#JP-18.182.139.34-2618
    vmess://eyJ2IjoiMiIsInBzIjoiU0ctMTU5LjIyMy4zMi4yMzAtMDEzMSIsImFkZCI6IjE1OS4yMjMuMzIuMjMwIiwicG9ydCI6IjgwODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiNzAwMjMzMGQtZmUyNy00YjU2LWIyMmYtZDdlM2ViODI1ZmRiIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9jY3R2MTMvaGQubTN1OCIsImhvc3QiOiIxNTkuMjIzLjMyLjIzMCIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@89.31.126.150:802#JP-89.31.126.150-0147
    trojan://40c89b10235c40321e7a3cef82b53a03@trs16.bolab.net:22?allowInsecure=0#JP-153.127.215.49-2622
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@185.160.24.217:804#JP-185.160.24.217-0151
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@89.31.126.171:800#JP-89.31.126.171-0158
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.138:808#SG-217.197.161.138-0165
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.166:809#SG-217.197.161.166-0166
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@81.90.189.18:811#SG-81.90.189.18-0168
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.136:812#SG-217.197.161.136-0171
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@81.90.189.184:809#SG-81.90.189.184-0176
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@81.90.189.152:809#SG-81.90.189.152-0179
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.164:807#SG-217.197.161.164-0195
    vmess://eyJ2IjoiMiIsInBzIjoiU0ctMTAzLjI1My4yNi4xMzQtMDIyMCIsImFkZCI6IjEwMy4yNTMuMjYuMTM0IiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiJhYmE1MGRkNC01NDg0LTNiMDUtYjE0YS00NjYxY2FmODYyZDUiLCJhaWQiOiI0IiwibmV0Ijoid3MiLCJwYXRoIjoiL3dzIiwiaG9zdCI6ImVlaDdpZXdlLmNvbSIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiU0ctMTgwLjIxNS4xMzAuMTIzLTAyMjEiLCJhZGQiOiIxODAuMjE1LjEzMC4xMjMiLCJwb3J0IjoiNDY0NTIiLCJ0eXBlIjoibm9uZSIsImlkIjoiYzU0MTRmZTAtMDE4Yi00NzNhLWFhM2ItZjIxMGYyYmE0MmY1IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiMTgwLjIxNS4xMzAuMTIzIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiU0ctOC4yMTQuMzMuMTU4LTAyMjIiLCJhZGQiOiI4LjIxNC4zMy4xNTgiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2I4MWU2YWItMWQ4My00YWMxLWYwYWQtYWU1YzJhN2MyOWVmIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiOC4yMTQuMzMuMTU4IiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiU0ctMjAyLjYxLjE0MS4xMzAtMDIyNCIsImFkZCI6IjIwMi42MS4xNDEuMTMwIiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiJhYmE1MGRkNC01NDg0LTNiMDUtYjE0YS00NjYxY2FmODYyZDUiLCJhaWQiOiI0IiwibmV0Ijoid3MiLCJwYXRoIjoiL3dzIiwiaG9zdCI6IjIwMi42MS4xNDEuMTMwIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiU0ctMTAzLjI1My4yNi4yMC0wMjI1IiwiYWRkIjoiMTAzLjI1My4yNi4yMCIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiYWJhNTBkZDQtNTQ4NC0zYjA1LWIxNGEtNDY2MWNhZjg2MmQ1IiwiYWlkIjoiNCIsIm5ldCI6IndzIiwicGF0aCI6Ii93cyIsImhvc3QiOiJ6ZWNqay5jb20iLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZpcOKRoF3lj7Dmub4xfOino+mUgU5GfDIuNXggLSBNRyBOZXR3b3JrIiwiYWRkIjoiMTkubWFtYW1hamQuc2l0ZSIsInBvcnQiOiIyMzYxOSIsInR5cGUiOiJub25lIiwiaWQiOiJlNGY3NGM3NS0wZjc2LTNmNjEtODhjNy0xMTM1NDc5NWU3ZTMiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiIxOS5tYW1hbWFqZC5zaXRlIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZpcOKRoF3ikaHmlrDliqDlnaEgLSBNRyBOZXR3b3JrIiwiYWRkIjoiMTcubWFtYW1hamQuc2l0ZSIsInBvcnQiOiIyMzYxNyIsInR5cGUiOiJub25lIiwiaWQiOiJlNGY3NGM3NS0wZjc2LTNmNjEtODhjNy0xMTM1NDc5NWU3ZTMiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiIxNy5tYW1hbWFqZC5zaXRlIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiSEvpppnmuK8obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyMyAyIiwiYWRkIjoiZ3RtMS5rdG13YW4ubmV0IiwicG9ydCI6IjEyODk4IiwidHlwZSI6Im5vbmUiLCJpZCI6ImQxMDQxMzFlLTQ0MjgtNGViOC04ZmNhLWM1NWJlNTUwNDkyZiIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6Imd0bTEua3Rtd2FuLm5ldCIsInRscyI6IiJ9
    trojan://Aimer@27.50.49.188:2096?allowInsecure=0&sni=us.blazeppn.info&ws=1&wspath=%2525252F%2525253Fed%2525253D2560%25252526proxyip%2525253Dts.hpc.tw%23%25E6%2596%25B0%25E5%258A%25A0%25E5%259D%25A1%2528yudou77.top%2520%25E7%258E%2589%25E8%25B1%2586%25E5%2585%258D%25E8%25B4%25B9%25E8%258A%2582%25E7%2582%25B9%2529trojan%3A%2F%2Fxxoo%40us.blazeppn.info%3A443%3FallowInsecure%3D0#US-138.197.5.103-0274
    ss://cmM0LW1kNToxNGZGUHJiZXpFM0hEWnpzTU9yNg@194.5.215.59:8080#US-194.5.215.59-0288
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.47.131:443#US-212.102.47.131-0293
    vmess://eyJ2IjoiMiIsInBzIjoi576O5Zu9IC0g5Li55L2bIC0gUEVHIFRFQ0ggSU5DIC0gNCIsImFkZCI6IjM4LjEyLjgzLjIxNyIsInBvcnQiOiIzMDAwMiIsInR5cGUiOiJub25lIiwiaWQiOiI0MTgwNDhhZi1hMjkzLTRiOTktOWIwYy05OGNhMzU4MGRkMjQiLCJhaWQiOiI2NCIsIm5ldCI6InRjcCIsInBhdGgiOiIlMjUyNTJGJTI1MjUzRmVkJTI1MjUzRDI1NjAlMjUyNTI2cHJveHlpcCUyNTI1M0R0cy5ocGMudHcjJUU2JTk2JUIwJUU1JThBJUEwJUU1JTlEJUExJTI4eXVkb3U3Ny50b3AlMjAlRTclOEUlODklRTglQjElODYlRTUlODUlOEQlRTglQjQlQjklRTglOEElODIlRTclODIlQjklMjl0cm9qYW46Ly94eG9vQHVzLmJsYXplcHBuLmluZm86NDQzP2FsbG93SW5zZWN1cmU9MCIsImhvc3QiOiJ1cy5ibGF6ZXBwbi5pbmZvIiwidGxzIjoiIn0=
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@37.19.198.236:443#US-37.19.198.236-0276
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.47.132:443#US-212.102.47.132-0291
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDIxMSIsImFkZCI6Im0xMXNkZmcuODkwNjA0LmRwZG5zLm9yZyIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiIwYTI4YjQyMC00ZjdjLTQzYWQtYTI5ZS04MDA2OGNlMDgyNjMiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL2xoVThTaHNvUFpsdWxubllQYjg2Y3NwIiwiaG9zdCI6Im0xMXNkZmcuODkwNjA0LmRwZG5zLm9yZyIsInRscyI6IiJ9
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.47.129:443#US-212.102.47.129-0296
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@173.244.56.6:443#US-173.244.56.6-0286
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTowZmJlZDZjOS0wZmI0LTRlYzMtODU4Mi1mNTY5ZjhkNzczZDU@120.233.147.197:23340#%E7%BE%8E%E5%9B%BD3
    ss://cmM0LW1kNToxNGZGUHJiZXpFM0hEWnpzTU9yNg@107.151.182.253:8080#SSR-%E7%BE%8E%E5%9B%BD-NF%E8%A7%A3%E9%94%81%E8%87%AA%E5%88%B6%E5%89%A7-ChatGPT-TikTok-YouTube-107.151.182.253%3A8080
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@173.244.56.9:443#US-173.244.56.9-0287
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.38.167:443#US-156.146.38.167-0283
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@37.19.198.160:443#US-37.19.198.160-0275
    trojan://3482c71a-d01c-4ae5-b454-fa8cb3785f66@94.131.20.3:443?allowInsecure=0&sni=chop-wrist-bud.stark-industries.solutions#_US_%E7%BE%8E%E5%9B%BD_3
    trojan://RlzoEILU@36.151.251.62:3330?allowInsecure=1&sni=cdn.egvra.cn#%E7%BE%8E%E5%9B%BD%20-%20%E5%9C%A3%E5%85%8B%E6%8B%89%E6%8B%89%20-%20DigitalOcean%2C%20LLC%20-%2010
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.38.168:443#US-156.146.38.168-0282
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.38.169:443#US-156.146.38.169-0405
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@149.22.95.183:443#CA-149.22.95.183-0354
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDEyNCIsImFkZCI6IjE3Mi42Ny4xNzAuNTEiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2VkMzA3YTItYWYyYy00MTEzLWJlYmMtZmI4ODhjNzAyYjdkIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9QRVE3Q29BMVZyQndzYm5FY21KTHhDIiwiaG9zdCI6Im00ZnJ0Ljk5OTE4Mi54eXoiLCJ0bHMiOiIifQ==
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.38.170:443#US-156.146.38.170-0284
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@us004.dogsvip.site:20004#United%20States%E4%B8%A804
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAxMiIsImFkZCI6Inh4Y2RmcjUuOTk5ODM2Lnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJ4eGNkZnI1Ljk5OTgzNi54eXoiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDIxMiIsImFkZCI6InVzMDEuc2gtY2xvdWRmbGFyZS5zYnMiLCJwb3J0IjoiODQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiIyNzAzODY3ZC1kZDhmLTRmN2YtOTNmNC1hYzZlNGY1NmM3ZTgiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJ1czAxLnNoLWNsb3VkZmxhcmUuc2JzIiwidGxzIjoidGxzIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDEyMSIsImFkZCI6IjEwNC4yMS4yMi4yMTEiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjMyZGMzMjMtNGQzMy00NzFjLTg3MGItYjZjMGQwYmQ4MDM0IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8yOHAxTTNzcEU5V09lZDVjT0NxSjFJSnA3ZUJ0RkoiLCJob3N0Ijoic3M0ZTQ1Ni50YWlwZWkxMDguZHBkbnMub3JnIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSA5IiwiYWRkIjoiY2R2YmdoeTcuOTk5MTgyLnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJjZHZiZ2h5Ny45OTkxODIueHl6IiwidGxzIjoiIn0=
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@37.19.198.244:443#US-37.19.198.244-0278
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSA0MCIsImFkZCI6ImJiYm5uanU4Ljk5OTE2NS54eXoiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiOTBmMzU3ZGQtNzlhYy00N2M2LWIwYjgtOTU4ZTJkMTlkZTA3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8xMFc2U0phSzBGMG9WWGVOVTZTMlJWUlAiLCJob3N0IjoiYmJibm5qdTguOTk5MTY1Lnh5eiIsInRscyI6IiJ9
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.47.130:443#US-212.102.47.130-0294
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSA3IiwiYWRkIjoieHhjY3ZmcnR5Ljk5OTgzNi54eXoiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiOTBmMzU3ZGQtNzlhYy00N2M2LWIwYjgtOTU4ZTJkMTlkZTA3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8xMFc2U0phSzBGMG9WWGVOVTZTMlJWUlAiLCJob3N0IjoieHhjY3ZmcnR5Ljk5OTgzNi54eXoiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyNiIsImFkZCI6IjEyMC4xOTguNzEuMjE0IiwicG9ydCI6IjMyOTgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjQxODA0OGFmLWEyOTMtNGI5OS05YjBjLTk4Y2EzNTgwZGQyNCIsImFpZCI6IjAiLCJuZXQiOiJ0Y3AiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJ4eGNjdmZydHkuOTk5ODM2Lnh5eiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAzNyIsImFkZCI6Inh4Y2NmdnJ0Ni45OTk4MzYueHl6IiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjkwZjM1N2RkLTc5YWMtNDdjNi1iMGI4LTk1OGUyZDE5ZGUwNyIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvMTBXNlNKYUswRjBvVlhlTlU2UzJSVlJQIiwiaG9zdCI6Inh4Y2NmdnJ0Ni45OTk4MzYueHl6IiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAzOCIsImFkZCI6ImNkZHZmZ3R5NjcuOTk5MTgyLnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJjZGR2Zmd0eTY3Ljk5OTE4Mi54eXoiLCJ0bHMiOiIifQ==
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpKSWhONnJCS2thRWJvTE5YVlN2NXJx@ca225.vpnbook.com:80#CA-142.4.216.225-0425
    vmess://eyJ2IjoiMiIsInBzIjoi576O5Zu9IC0g5rC054mb5Z+OIC0gSG9zdFBhcGEgLSAzIiwiYWRkIjoieGN2YmdoeTQuOTk5MTY1Lnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJ4Y3ZiZ2h5NC45OTkxNjUueHl6IiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAxOCIsImFkZCI6Inh4Y2RmcnQuOTk5ODM2Lnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJ4eGNkZnJ0Ljk5OTgzNi54eXoiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi576O5Zu9IC0g5ouJ5pav57u05Yqg5pavIC0gRnJhblRlY2ggU29sdXRpb25zIC0gMjU3IiwiYWRkIjoidGsuaHpsdC50a2RkbnMueHl6IiwicG9ydCI6IjIyNjQxIiwidHlwZSI6Im5vbmUiLCJpZCI6Ijk4ZTk2YzlmLTRiYjMtMzlkNC05YTJjLWZhYzA0MjU3ZjdjNyIsImFpZCI6IjIiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6Inp4anAtYS50a29uZy5jYyIsInRscyI6InRscyJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpKSWhONnJCS2thRWJvTE5YVlN2NXJx@142.4.216.225:80#CA-142.4.216.225-0421
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAxNCIsImFkZCI6InhjZnJ0eTYuOTk5MTY1Lnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJ4Y2ZydHk2Ljk5OTE2NS54eXoiLCJ0bHMiOiIifQ==
    trojan://telegram-id-privatevpns@15.237.207.107:22222?allowInsecure=0&sni=trojan.burgerip.co.uk#%E7%BE%8E%E5%9B%BD%20%E6%83%A0%E6%99%AE%E5%85%AC%E5%8F%B8
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyOSIsImFkZCI6IjE4My4yMzguOTAuOCIsInBvcnQiOiI0NjkyMCIsInR5cGUiOiJub25lIiwiaWQiOiI0MTgwNDhhZi1hMjkzLTRiOTktOWIwYy05OGNhMzU4MGRkMjQiLCJhaWQiOiI2NCIsIm5ldCI6InRjcCIsInBhdGgiOiIvIiwiaG9zdCI6InRyb2phbi5idXJnZXJpcC5jby51ayIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyMiIsImFkZCI6Im4xNzM3NDIwODM3LmFmamlhbi5jbiIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiZWY1ODYyOGQtZWNhMS00MjY2LTg2NzQtYjI0ZDkxZTQ5ZjAxIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoibjE3Mzc0MjA4MzcuYWZqaWFuLmNuIiwidGxzIjoidGxzIn0=
    ss://YWVzLTI1Ni1nY206ZjVmMGEzZThmYTA3YjJlMg@198.98.60.202:2022#%E7%BE%8E%E5%9B%BD%20-%20%E7%BA%BD%E7%BA%A6%20-%20FranTech%20Solutions%20-%206
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDg0IiwiYWRkIjoiMTIwLjIzMi4xNTMuNDEiLCJwb3J0IjoiNDE1OTciLCJ0eXBlIjoibm9uZSIsImlkIjoiNDE4MDQ4YWYtYTI5My00Yjk5LTliMGMtOThjYTM1ODBkZDI0IiwiYWlkIjoiMCIsIm5ldCI6InRjcCIsInBhdGgiOiIvIiwiaG9zdCI6Im4xNzM3NDIwODM3LmFmamlhbi5jbiIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvMzh5dXZ6U2UzbTVhRE5wSHRVUEgxekd3YkdFWFhNRHNHd1ZhdWIyU1lFbUhVYTJXR1pVamllelgzVnZ2YTlDQ3pwanhZdHVKTGdLc1Nuc3lLQmY5Y2lQVmJhM3k0bzM@beta.mattenadene.org:54075#US-94.131.21.174-5239
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAzMSIsImFkZCI6InY3LmhlZHVpYW4ubGluayIsInBvcnQiOiIzMDgwNyIsInR5cGUiOiJub25lIiwiaWQiOiJjYmIzZjg3Ny1kMWZiLTM0NGMtODdhOS1kMTUzYmZmZDU0ODQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiL29vb28iLCJob3N0IjoidjcuaGVkdWlhbi5saW5rIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAzNiIsImFkZCI6InY5LmhlZHVpYW4ubGluayIsInBvcnQiOiIzMDgwOSIsInR5cGUiOiJub25lIiwiaWQiOiJjYmIzZjg3Ny1kMWZiLTM0NGMtODdhOS1kMTUzYmZmZDU0ODQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiL29vb28iLCJob3N0IjoiYmFpZHUuY29tIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDYyIiwiYWRkIjoiMTExLjI2LjEwOS43OSIsInBvcnQiOiIzMDgyOCIsInR5cGUiOiJub25lIiwiaWQiOiJjYmIzZjg3Ny1kMWZiLTM0NGMtODdhOS1kMTUzYmZmZDU0ODQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiL29vb28iLCJob3N0Ijoib2NiYy5jb20iLCJ0bHMiOiIifQ==
    ss://YWVzLTI1Ni1nY206WEtGS2wyclVMaklwNzQ@38.121.43.6:8008#US-38.121.43.6-5372
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMTcwLjEzMC45Mi42NS0wNTU4IiwiYWRkIjoiZnIyLnYycmF5c2Vydi5jb20iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiNzIwZTVjNGUtNGU0NC00MGY2LThlNzMtN2MzMmUxOGI2MWQwIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9zc2hvY2VhbiIsImhvc3QiOiJmcjIudjJyYXlzZXJ2LmNvbSIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyIiwiYWRkIjoieHhjdmd0eTY4OS45OTkxODIueHl6IiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjkwZjM1N2RkLTc5YWMtNDdjNi1iMGI4LTk1OGUyZDE5ZGUwNyIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvMTBXNlNKYUswRjBvVlhlTlU2UzJSVlJQIiwiaG9zdCI6Inh4Y3ZndHk2ODkuOTk5MTgyLnh5eiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoi576O5Zu9IC0g5rC054mb5Z+OIC0gSG9zdFBhcGEgLSA1IiwiYWRkIjoic3NzY2RmcjUuZnJlZXZwbmF0bTIwMjUuZHBkbnMub3JnIiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjkwZjM1N2RkLTc5YWMtNDdjNi1iMGI4LTk1OGUyZDE5ZGUwNyIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvMTBXNlNKYUswRjBvVlhlTlU2UzJSVlJQIiwiaG9zdCI6InNzc2NkZnI1LmZyZWV2cG5hdG0yMDI1LmRwZG5zLm9yZyIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAxOSIsImFkZCI6ImRjdmZnMjNlLjk5OTE4Mi54eXoiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiOTBmMzU3ZGQtNzlhYy00N2M2LWIwYjgtOTU4ZTJkMTlkZTA3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8xMFc2U0phSzBGMG9WWGVOVTZTMlJWUlAiLCJob3N0IjoiZGN2ZmcyM2UuOTk5MTgyLnh5eiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSAyMSIsImFkZCI6ImRjdmZndDYuOTk5MTgyLnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5MGYzNTdkZC03OWFjLTQ3YzYtYjBiOC05NThlMmQxOWRlMDciLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzEwVzZTSmFLMEYwb1ZYZU5VNlMyUlZSUCIsImhvc3QiOiJkY3ZmZ3Q2Ljk5OTE4Mi54eXoiLCJ0bHMiOiIifQ==
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpMTVNOaDIxVHJYalIyb2syNVEybkU4RU5UMnpvQm1QdmthM1JDQ1VBSFpFTENuV29la1ZqdmFmODlxd2NSa2RieEVmZXAyYmMyYVV0bW54cXZGMWF5UVJlejFKSGpVTGo@exchange.gameaurela.click:52952#US-166.88.131.195-5382
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMTcyLjIzMy4yMTkuMTIzLTI4NzUiLCJhZGQiOiJjZi1hejAxLTgxLmNsYXNoem9uZS54eXoiLCJwb3J0IjoiODQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiI0MzBiNjg5NS0yZTBmLTQ3MTYtOTQxMC1lMTMzOWQwZjlhZjYiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL3YyYXo4MSIsImhvc3QiOiJjZi1hejAxLTgxLmNsYXNoem9uZS54eXoiLCJ0bHMiOiIifQ==
    trojan://f82fb954-06a1-4f0b-9180-17e07585b61f@104.21.64.1:443?allowInsecure=0&sni=6hj8.191262.xyz&ws=1&wspath=%2525252FYu29UN3Yz8hcnI3SlZor0#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%2079
    vmess://eyJ2IjoiMiIsInBzIjoi576O5Zu9KHl1ZG91NzcudG9wIOeOieixhuWFjei0ueiKgueCuSkgMjUiLCJhZGQiOiJpcC5zYiIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2ZhOGMzNmMtOTY1Mi00ODRhLTg5ZTEtMzRkY2M5OGZhYWMzIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii92bWVzcz9lZD0yMDQ4IiwiaG9zdCI6ImNkbi4zaWFwcHMuY29tIiwidGxzIjoidGxzIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDQyIiwiYWRkIjoieGRkLmRhc2h1YWkuY3lvdSIsInBvcnQiOiI0NTA1MyIsInR5cGUiOiJub25lIiwiaWQiOiI0MzkyMGY2Yy1jMGIyLTQzMmItOGY3My03ZTg5YTFhMzdmOGMiLCJhaWQiOiIwIiwibmV0IjoidGNwIiwicGF0aCI6Ii92bWVzcz9lZD0yMDQ4IiwiaG9zdCI6ImNkbi4zaWFwcHMuY29tIiwidGxzIjoiIn0=
    trojan://a926af96-2cfe-4169-8107-6c5f0d74a938@104.21.112.1:443?allowInsecure=0&sni=zsde.7777128.xyz&ws=1&wspath=%2525252F5NB3RVAWa3Uo1P5zFPkui#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%20142
    trojan://70776bb4-d791-4cbd-9c9b-c76e937f9e60@172.67.216.240:443?allowInsecure=1&sni=Xxs345rf.857856.xYZ&ws=1&wspath=%2525252F71M8Ov1I5Gk9247fHC0XGZG6#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%20169
    trojan://f82fb954-06a1-4f0b-9180-17e07585b61f@104.21.32.1:443?allowInsecure=1&sni=6hj8.191262.xyz&ws=1&wspath=%2525252FYu29UN3Yz8hcnI3SlZor0#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%20193
    trojan://aa424865-2762-404c-b767-66c9f98e026b@104.21.38.48:443?allowInsecure=1&sni=4WwwWwWWWwWWWwwWWWWWWwwTttTtTT.HuAnGdI2031.dpdnS.ORG&ws=1&wspath=%2525252FP6OrM7FLvAhFqZdFGa29fCwxS#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%20197
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDM4IiwiYWRkIjoidXNoY2MxLmNsb3VkZmxhcmUuMTgyNjgyLnh5eiIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiNjBmNDViZTQtNjVlMS0zNTRlLThlMGUtOWQ3NzVlNjk5NzIzIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9obHMvY2N0djVwaGQubTN1OCIsImhvc3QiOiJ2MmhjYzEtNmE3YjhjLjkwMjIyMi54eXoiLCJ0bHMiOiJ0bHMifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSA1IiwiYWRkIjoiY2R2ZmJnLjk5OTE4Mi54eXoiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiOTBmMzU3ZGQtNzlhYy00N2M2LWIwYjgtOTU4ZTJkMTlkZTA3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8xMFc2U0phSzBGMG9WWGVOVTZTMlJWUlAiLCJob3N0IjoiY2R2ZmJnLjk5OTE4Mi54eXoiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg576O5Zu9IDIxNCIsImFkZCI6IjQ1LjE0Ny4yMDEuMjMxIiwicG9ydCI6IjIzMDg4IiwidHlwZSI6Im5vbmUiLCJpZCI6IjJlMjVmNDRkLTU3ZTQtNGNmNC05Njc1LWUwYjQyYTQyMjYzNSIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6IiIsInRscyI6IiJ9
    trojan://FYCO02u8Ny3RS38axzSTl3pcaegKlZ3BZyeS7Eaj6A9ODYIpwCAXF5CR4DqxDn@13.60.86.63:443?allowInsecure=0&sni=loosely.freetrade.link#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%20215
    trojan://61d9cc32-80cc-4144-b506-703c7f2c8c88@123.interld123456789.com:443?allowInsecure=0&sni=bfz79jhcmiu188n-3b.us1234567891.xyz&ws=1&wspath=%2525252Fmusic#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E7%BE%8E%E5%9B%BD%2020
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@lavip102.qlgq.fun:49643?allowInsecure=1&sni=lavip102.qlgq.fun#%E7%BE%8E%E5%9B%BD%20%E6%B4%9B%E6%9D%89%E7%9F%B6104%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    trojan://3c668456-cc9c-3392-9014-0f73e5a09bb3@lavip101.qlgq.fun:11156?allowInsecure=1&sni=lavip101.qlgq.fun#%E7%BE%8E%E5%9B%BD%20%E6%B4%9B%E6%9D%89%E7%9F%B6101%20-%20%E5%A2%99%E4%BA%86%E4%B8%AA%E5%A2%99
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZtZXNzXVvpmLLlpLHogZRdVVMtTG9zX0FuZ2VsZXMt5rSb5p2J55+2LUIgLSDkupHnjKvmnLrlnLot5YWN6LS55YWs55uKIiwiYWRkIjoiVVMtTG9zX0FuZ2VsZXMtQi5jZmlwLnRvcCIsInBvcnQiOiI4NDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6IjM2ZjcxYjAyLTA0YmYtNGFiNi04ZjE3LTg1MGEwMDJiNDQ4ZCIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvY2N0djEzL2hkLm0zdTgiLCJob3N0IjoidXMtbG9zX2FuZ2VsZXMtYi5jZmlwLnRvcCIsInRscyI6InRscyJ9
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZtZXNzXVvpmLLlpLHogZRdVVMtTG9zX0FuZ2VsZXMt5rSb5p2J55+2LUEgLSDkupHnjKvmnLrlnLot5YWN6LS55YWs55uKIiwiYWRkIjoiVVMtTG9zX0FuZ2VsZXMtQS5jZmlwLnRvcCIsInBvcnQiOiI4NDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6IjM2ZjcxYjAyLTA0YmYtNGFiNi04ZjE3LTg1MGEwMDJiNDQ4ZCIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvY2N0djEzL2hkLm0zdTgiLCJob3N0IjoidXMtbG9zX2FuZ2VsZXMtYS5jZmlwLnRvcCIsInRscyI6InRscyJ9
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZtZXNzXVvpmLLlpLHogZRdVVMtTmV3X1lvcmst57q957qmIC0g5LqR54yr5py65Zy6LeWFjei0ueWFrOebiiIsImFkZCI6InVzYmsuY2ZpcC50b3AiLCJwb3J0IjoiODQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiIzNmY3MWIwMi0wNGJmLTRhYjYtOGYxNy04NTBhMDAyYjQ0OGQiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL2NjdHYxMy9oZC5tM3U4IiwiaG9zdCI6InVzYmsuY2ZpcC50b3AiLCJ0bHMiOiJ0bHMifQ==
    trojan://f0f6e76e-e5fe-4e2c-9faf-34832e021eae@172.67.172.91:443?allowInsecure=0&sni=Ty.457.pP.uA&ws=1&wspath=%2525252FmZr1mA5hub7QHHkQBzYO#%E7%BE%8E%E5%9B%BD%20-%20%E7%B4%90%E7%B4%84%20-%20Massivegrid%20LTD%20-%20264
    trojan://c6840587-7ac4-40be-aa4b-ae327eb4fa53@172.67.200.117:443?allowInsecure=0&sni=ccdfRt6.890634.Xyz&ws=1&wspath=%2525252FogSVyJu0ksqZjqvVUXlLhk95Ad#%E7%BE%8E%E5%9B%BD%20-%20%E7%B4%90%E7%B4%84%20-%20Massivegrid%20LTD%20-%20274
    trojan://895552fa-6284-4c1d-ba00-3944e0c7c626@172.67.144.126:443?allowInsecure=0&sni=CFR56ty7890.288288.sHOP&ws=1&wspath=%2525252FBy7cEmOrNRS58yeduy9AOG#%E7%BE%8E%E5%9B%BD%20-%20%E7%B4%90%E7%B4%84%20-%20Massivegrid%20LTD%20-%20277
    vmess://eyJ2IjoiMiIsInBzIjoiW3ZpcOKRoF3nvo7lm70xIC0gTUcgTmV0d29yayIsImFkZCI6IjE1Lm1hbWFtYWpkLnNpdGUiLCJwb3J0IjoiMjM2MTUiLCJ0eXBlIjoibm9uZSIsImlkIjoiZTRmNzRjNzUtMGY3Ni0zZjYxLTg4YzctMTEzNTQ3OTVlN2UzIiwiYWlkIjoiMiIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiMTUubWFtYW1hamQuc2l0ZSIsInRscyI6IiJ9
    trojan://trojan@91.193.58.0:443?allowInsecure=0&sni=wahaha.yingyangkuaixian.dpdns.org&ws=1&wspath=%2525252F%2525253Fed%2525253D2560#%E7%BE%8E%E5%9B%BD%20-%20%E8%81%96%E8%8D%B7%E8%A5%BF%20-%20Cloudflare%2C%20Inc.%20-%20349
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@us001.dogsvip.site:20001#United%20States%E4%B8%A801
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@us002.dogsvip.site:20002#United%20States%E4%B8%A802
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@us003.dogsvip.site:20003#United%20States%E4%B8%A803
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@37.19.198.243:443#US-37.19.198.243-0277
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@us005.dogsvip.site:20005#United%20States%E4%B8%A805
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@ca001.dogsvip.site:22002#Canada%E4%B8%A801
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMjA1LjE4NS4xMjQuMTQ1LTAwMDYiLCJhZGQiOiIyMDUuMTg1LjEyNC4xNDUiLCJwb3J0IjoiODUiLCJ0eXBlIjoibm9uZSIsImlkIjoiODg3YTFjNjgtNDY2NS0zZTc0LWE5MTEtNGUyYmU2ZjJlODJmIiwiYWlkIjoiMiIsIm5ldCI6IndzIiwicGF0aCI6Ii92MnJheSIsImhvc3QiOiIyMDUuMTg1LjEyNC4xNDUiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMjA4Ljk4LjQ4LjItMDAwNyIsImFkZCI6IjIwOC45OC40OC4yIiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiJhYmE1MGRkNC01NDg0LTNiMDUtYjE0YS00NjYxY2FmODYyZDUiLCJhaWQiOiI0IiwibmV0Ijoid3MiLCJwYXRoIjoiL3dzIiwiaG9zdCI6Imllc2VpMWVpLmNvbSIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMzQuMjE1LjEzMC4xODYtMDAwOCIsImFkZCI6IjM0LjIxNS4xMzAuMTg2IiwicG9ydCI6IjEwMDg5IiwidHlwZSI6Im5vbmUiLCJpZCI6IjM2MDhjOWRjLTFlZWItNDhiMC1iNTcwLTQzMDc0YjRhMGM5ZSIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6IjM0LjIxNS4xMzAuMTg2IiwidGxzIjoiIn0=
    trojan://3a2c0c6c-9ee5-c05f-c951-fcd73831983e@kr01.wangxd.life:3052?allowInsecure=0&sni=kr01.wangxd.life#US-172.233.219.49-0019
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMjA3LjI0NC42NS41OC0wMDI2IiwiYWRkIjoib3oubW9vbmZyZWUudG9wIiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiI2ZTllZWFlNi1jM2QxLTQzOWUtOWY3YS0yMTNmZTA5YjJkYmUiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJvei5tb29uZnJlZS50b3AiLCJ0bHMiOiIifQ==
    ss://YWVzLTI1Ni1nY206Y2RCSURWNDJEQ3duZklO@169.197.141.52:8119#US-169.197.141.52-0032
    trojan://3a2c0c6c-9ee5-c05f-c951-fcd73831983e@kr05.wangxd.life:3052?allowInsecure=0#US-172.233.219.49-0038
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMjA3LjI0NC42NS41OC0wMDQ5IiwiYWRkIjoib2NyYjEubW9vbmZyZWUudG9wIiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiI2ZTllZWFlNi1jM2QxLTQzOWUtOWY3YS0yMTNmZTA5YjJkYmUiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJvY3JiMS5tb29uZnJlZS50b3AiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtNjkuMTYuMjMwLjE2NS0wMDY5IiwiYWRkIjoiMDAxYS5BUC5QT1AuQklHQUlSUE9SVC5ORVQiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiZWFkNzBlMjEtMDIzZi00Y2ExLWEyNzYtNjRmZDM2NzllMmY2IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiMDAxYS5BUC5QT1AuQklHQUlSUE9SVC5ORVQiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtNjkuMTYyLjk1LjItMDA3NiIsImFkZCI6Imd5Lm1vb25mcmVlLnRvcCIsInBvcnQiOiIxNzI1MyIsInR5cGUiOiJub25lIiwiaWQiOiI2ZTllZWFlNi1jM2QxLTQzOWUtOWY3YS0yMTNmZTA5YjJkYmUiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJvY3JiMi5tb29uZnJlZS50b3AiLCJ0bHMiOiIifQ==
    ss://YWVzLTI1Ni1nY206S2l4THZLendqZWtHMDBybQ@38.75.136.34:8080#US-38.75.136.34-0124
    ss://YWVzLTEyOC1jZmI6c2hhZG93c29ja3M@156.146.38.163:443#US-156.146.38.163-0127
    ss://YWVzLTI1Ni1nY206UmV4bkJnVTdFVjVBRHhH@169.197.141.14:7002#US-169.197.141.14-0128
    ss://YWVzLTI1Ni1nY206Rm9PaUdsa0FBOXlQRUdQ@169.197.143.232:7307#US-169.197.143.232-0129
    vmess://eyJ2IjoiMiIsInBzIjoiVVMtMTkyLjk2LjIwNC4yNTAtMDEzMCIsImFkZCI6IjE5Mi45Ni4yMDQuMjUwIiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiJhYmE1MGRkNC01NDg0LTNiMDUtYjE0YS00NjYxY2FmODYyZDUiLCJhaWQiOiI0IiwibmV0Ijoid3MiLCJwYXRoIjoiL3dzIiwiaG9zdCI6IiIsInRscyI6IiJ9
    trojan://e6a2e741-0fce-440b-910c-b81325e2263a@bats-paper-chump.stark-industries.solutions:443?allowInsecure=0&sni=bats-paper-chump.stark-industries.solutions#%E6%9C%AA%E7%9F%A5_4
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNToxeE8yY3FQYXpxakdmQ2Zk@freakconfig13.felafel.org:443#GB-131.145.5.20-0347
    trojan://e6a2e741-0fce-440b-910c-b81325e2263a@cache-giver-wife.stark-industries.solutions:443?allowInsecure=0&sni=cache-giver-wife.stark-industries.solutions#%E6%9C%AA%E7%9F%A5_1
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpCb2cwRUxtTU05RFN4RGRR@85.210.120.237:443#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E8%8B%B1%E5%9B%BD%20129
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpXNzRYRkFMTEx1dzZtNUlB@series-a1.samanehha.co:443#GB-131.145.5.20-0350
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo2OU1VaWk3VkR3TXFoN0h6@admin.c4.webramz.co:443#GB-74.177.243.212-0342
    trojan://3482c71a-d01c-4ae5-b454-fa8cb3785f66@guy-trace-lyric.stark-industries.solutions:443?allowInsecure=0#%E6%9C%AA%E7%9F%A5_2
    trojan://RlzoEILU@36.156.102.124:15624?allowInsecure=1#%E2%9D%93_%F0%9F%87%A8%F0%9F%87%B3_%F0%9F%93%B6_github.com%2FRuk1ng001_3133386530666265
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp1MTdUM0J2cFlhYWl1VzJj@series-a2-mec.samanehha.co:443#GB-13.87.97.150-0341
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpCb2cwRUxtTU05RFN4RGRR@series-a2-me.samanehha.co:443#GB-85.210.120.237-0329
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo0YTJyZml4b3BoZGpmZmE4S1ZBNEFh@45.158.171.141:8080#FR-45.158.171.141-0297
    ss://YWVzLTI1Ni1nY206VDA3TDhKTlgyUVBBN1NXQg@185.213.22.93:20026#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E6%AF%94%E5%88%A9%E6%97%B6%2001
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpRQ1hEeHVEbFRUTUQ3anRnSFVqSW9q@45.87.175.178:8080#LT-45.87.175.178-0303
    ss://YWVzLTI1Ni1nY206ZG9uZ3RhaXdhbmcuY29t@195.154.54.171:13355#FR%E6%B3%95%E5%9B%BD%28mibei77.com%20%E7%B1%B3%E8%B4%9D%E8%8A%82%E7%82%B9%E5%88%86%E4%BA%AB%29
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk007.dogsvip.site:16007#Hong%20Kong%E4%B8%A807%202
    trojan://e6a2e741-0fce-440b-910c-b81325e2263a@bring-glove-shine.stark-industries.solutions:443?allowInsecure=0&sni=bring-glove-shine.stark-industries.solutions#%E6%9C%AA%E7%9F%A5_6
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp3WkVZckIyNWVMcGlMaEIyN3U3Y3VMRG9STDZqaFpNZkN4cnNyTXZPeGNTMkVNR2J2V2lKZEsyaXRpV1VIQVE9@45.43.137.114:443#%E6%B3%A2%E5%85%B0%20-%20%E5%8D%8E%E6%B2%99%20-%20Newserverlife%20LLC%20-%201
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpRQ1hEeHVEbFRUTUQ3anRnSFVqSW9q@45.87.175.157:8080#LT-45.87.175.157-0316
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpXc3R1U25sdTRpZUE5TTBM@admin.c2.webramz.co:443#GB-13.87.97.150-0345
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo0YTJyZml4b3BoZGpmZmE4S1ZBNEFh@45.87.175.154:8080#LT-45.87.175.154-0302
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNToxeE8yY3FQYXpxakdmQ2Zk@admin.c1.webramz.co:443#GB-131.145.5.20-0351
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo0YTJyZml4b3BoZGpmZmE4S1ZBNEFh@beesyar.org:8080#LT-45.87.175.166-0298
    ss://cmM0LW1kNToxNGZGUHJiZXpFM0hEWnpzTU9yNg@146.70.61.18:8080#GB-146.70.61.18-0292
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpXNzRYRkFMTEx1dzZtNUlB@series-a2.samanehha.co:443#GB-131.145.5.20-0352
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpCb2cwRUxtTU05RFN4RGRR@admin.c3.webramz.co:443#GB-85.210.120.237-0333
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.80:443#GB-212.102.53.80-0326
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.194:443#GB-212.102.53.194-0125
    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@p080.panda001.net:36379#github.com%2FRuk1ng001_3139393836313463
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNToxUld3WGh3ZkFCNWdBRW96VTRHMlBn@45.87.175.164:8080#LT-45.87.175.164-0317
    ss://YWVzLTI1Ni1nY206MzIzNTM3ZGYtZGJkZi00ZjdlLWE0YzctNmMyOTBkOGU1M2Zm@hk009.dogsvip.site:16009#Hong%20Kong%E4%B8%A809%202
    trojan://60f6b4c4-9d70-11ed-a4d2-f23c9164ca5d@d8454d65-swxgg0-t1bnjq-1krtb.cu.plebai.net:15229?allowInsecure=0#github.com%2FRuk1ng001_6361323864366537
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpCb2cwRUxtTU05RFN4RGRR@series-a2-me.varzesh360.co:443#GB-85.210.120.237-0330
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp1MTdUM0J2cFlhYWl1VzJj@api.namasha.co:443#GB-13.87.97.150-0344
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.81:443#GB-212.102.53.81-0336
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@45.158.171.110:8080#FR-45.158.171.110-0300
    ss://YWVzLTI1Ni1nY206RFRDQlo3Sk9EMzg0RVlIUw@185.47.253.144:20010#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E5%8E%84%E7%93%9C%E5%A4%9A%E5%B0%94%2001
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNToxUld3WGh3ZkFCNWdBRW96VTRHMlBn@45.87.175.188:8080#LT-45.87.175.188-0295
    vmess://eyJ2IjoiMiIsInBzIjoiZ2l0aHViLmNvbS9SdWsxbmcwMDFfNjQzNDM5MzI2MTYzMzk2MiIsImFkZCI6InY0MC5oZWR1aWFuLmxpbmsiLCJwb3J0IjoiMzA4NDAiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2JiM2Y4NzctZDFmYi0zNDRjLTg3YTktZDE1M2JmZmQ1NDg0IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9pbmRleCIsImhvc3QiOiJhcGkxMDAtY29yZS1xdWljLWxmLmFtZW12LmNvbSIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpMY2MxbHc4SVAyS0k@77.91.103.73:443#FI-77.91.103.73-0381
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@45.158.171.66:8080#FR-45.158.171.66-5091
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@uk-dc1.yangon.club:443#GB-212.102.53.197-0324
    trojan://0a335fd6-be0b-11ec-8dfa-f23c91cfbbc9@68f1a514-sx4v40-sxkd63-17z95.cu.plebai.net:15229?allowInsecure=0&sni=68f1a514-sx4v40-sxkd63-17z95.cu.plebai.net#github.com%2FRuk1ng001_3164373939316161
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.79:443#GB-212.102.53.79-0337
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.195:443#GB-212.102.53.195-0331
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.78:443#GB-212.102.53.78-0328
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@193.29.139.251:8080#NL-193.29.139.251-5312
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo0YTJyZml4b3BoZGpmZmE4S1ZBNEFh@45.87.175.199:8080#LT-45.87.175.199-0308
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.197:443#GB-212.102.53.197-0349
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp1MTdUM0J2cFlhYWl1VzJj@series-a2-mec.varzesh360.co:443#GB-13.87.97.150-0355
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@45.87.175.65:8080#LT-45.87.175.65-5296
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpRQ1hEeHVEbFRUTUQ3anRnSFVqSW9q@45.158.171.146:8080#FR-45.158.171.146-0368
    ss://cmM0LW1kNToxNGZGUHJiZXpFM0hEWnpzTU9yNg@193.108.119.230:8080#DE-193.108.119.230-0380
    trojan://RlzoEILU@36.151.251.61:33097?allowInsecure=1#%E8%8D%B7%E5%85%B0%20-%20%E9%98%BF%E5%A7%86%E6%96%AF%E7%89%B9%E4%B8%B9%20-%20DigitalOcean%2C%20LLC%20-%201
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.62.162:443#CH-156.146.62.162-0383
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@45.87.175.35:8080#LT-45.87.175.35-0459
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@149.34.244.68:443#NL-149.34.244.68-0334
    trojan://e6a2e741-0fce-440b-910c-b81325e2263a@strut-brisk-scope.stark-industries.solutions:443?allowInsecure=0&sni=strut-brisk-scope.stark-industries.solutions#%E6%9C%AA%E7%9F%A5_3
    ss://YWVzLTEyOC1jZmI6c2hhZG93c29ja3M@109.201.152.181:443#NL-109.201.152.181-0371
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@103.104.247.49:8080#NL-103.104.247.49-5307
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@45.87.175.28:8080#SS-%E7%AB%8B%E9%99%B6%E5%AE%9B%3E%E8%8D%B7%E5%85%B0-NF%E8%A7%A3%E9%94%81%E8%8D%B7%E5%85%B0%E8%87%AA%E5%88%B6%E5%89%A7-ChatGPT-TikTok-YouTube-45.87.175.28%3A8080
    ss://YWVzLTI1Ni1nY206ZDdhMTVmN2E0YzgwNmEzMw@195.133.5.176:2022#%E4%BF%84%E7%BD%97%E6%96%AF%20-%20%E8%8E%AB%E6%96%AF%E7%A7%91%20-%20LLC%20Baxet%20-%203
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@45.87.175.92:8080#LT-45.87.175.92-5485
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@141.98.101.178:443#GB-141.98.101.178-0372
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.196:443#GB-212.102.53.196-0332
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.62.163:443#CH-156.146.62.163-0361
    ssr://My5saW5rLWh1Yi5jbGljazo0MDIzODphdXRoX2FlczEyOF9tZDU6cmM0LW1kNTpwbGFpbjpSVTVhTlRKTC8_Z3JvdXA9VTFOU1VISnZkbWxrWlhJJnJlbWFya3M9WjJsMGFIVmlMbU52YlM5U2RXc3hibWN3TURGZk5qVTJNall5TmpRMk5qTXdNemN6TUEmb2Jmc3BhcmFtPVkyUXlZalk1TWprd01pNDJOakF5WWpnME5qTTBOalF4TURnMU1EWXViV2xqY205emIyWjBMbU52YlEmcHJvdG9wYXJhbT1PVEk1TURJNmNFWlhSMDlS
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@103.104.247.47:8080#NL-103.104.247.47-5310
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@185.213.23.226:989#%E6%8C%AA%E5%A8%81%20-%20%E5%A5%A5%E6%96%AF%E9%99%86%20-%20BrainStorm%20Network%2C%20Inc%20-%201
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.62.164:443#CH-156.146.62.164-0364
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@212.102.53.198:443#GB-212.102.53.198-0320
    vmess://eyJ2IjoiMiIsInBzIjoi6Iux5Zu9IC0gU2xvdWdoIC0gRGlnaXRhbE9jZWFuLCBMTEMgLSAzIiwiYWRkIjoidjM2LmhlZHVpYW4ubGluayIsInBvcnQiOiIzMDgzNiIsInR5cGUiOiJub25lIiwiaWQiOiJjYmIzZjg3Ny1kMWZiLTM0NGMtODdhOS1kMTUzYmZmZDU0ODQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiL29vb28iLCJob3N0IjoidjM2LmhlZHVpYW4ubGluayIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpvWklvQTY5UTh5aGNRVjhrYTNQYTNB@193.29.139.202:8080#NL-193.29.139.202-0311
    ss://YWVzLTEyOC1nY206c2hhZG93c29ja3M@156.146.62.161:443#CH-156.146.62.161-0369
    ss://YWVzLTI1Ni1nY206NDE5NGNlNWIxZjM2ZjY2MA@176.32.35.68:2022#%E4%BF%84%E7%BD%97%E6%96%AF%20-%20%E8%8E%AB%E6%96%AF%E7%A7%91%20-%20LLC%20Baxet%20-%204
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@62.100.205.48:989#%E8%8B%B1%E5%9B%BD%20-%20%E5%80%AB%E6%95%A6%E9%87%91%E8%9E%8D%E5%9F%8E%20-%20Krystal%20Hosting%20Ltd%20-%201
    vmess://eyJ2IjoiMiIsInBzIjoiZ2l0aHViLmNvbS9SdWsxbmcwMDFfNjYzMjM1NjIzODYzMzU2NiIsImFkZCI6InY0LmhlZHVpYW4ubGluayIsInBvcnQiOiIzMDgwNCIsInR5cGUiOiJub25lIiwiaWQiOiJjYmIzZjg3Ny1kMWZiLTM0NGMtODdhOS1kMTUzYmZmZDU0ODQiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiL29vb28iLCJob3N0Ijoib2NiYy5jb20iLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiZ2l0aHViLmNvbS9SdWsxbmcwMDFfMzMzNDM1NjYzNDM0NjIzMyIsImFkZCI6InYzMC5oZWR1aWFuLmxpbmsiLCJwb3J0IjoiMzA4MzAiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2JiM2Y4NzctZDFmYi0zNDRjLTg3YTktZDE1M2JmZmQ1NDg0IiwiYWlkIjoiMiIsIm5ldCI6IndzIiwicGF0aCI6Ii9vb29vIiwiaG9zdCI6Im9jYmMuY29tIiwidGxzIjoiIn0=
    ss://YWVzLTI1Ni1nY206MmUxZjljOGQwZDRmNzk4OA@107.189.6.201:2025#%E5%8D%A2%E6%A3%AE%E5%A0%A1%20-%20Roost%20-%20FranTech%20Solutions%20-%201
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpOazlhc2dsRHpIemprdFZ6VGt2aGFB@160.19.78.75:443#VN-160.19.78.75-5396
    ss://YWVzLTI1Ni1jZmI6WG44aktkbURNMDBJZU8lIyQjZkpBTXRzRUFFVU9wSC9ZV1l0WXFERm5UMFNW@103.186.154.28:38388#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E8%B6%8A%E5%8D%97%2004
    trojan://8a03bc28-2a33-42c4-be59-30464dbb9954@fra13.yukiss.eu.org:18818?allowInsecure=0#DE-130.162.230.82-2553
    vmess://eyJ2IjoiMiIsInBzIjoiUkVMQVktMTA0LjIxLjU1LjIzNC03NDY3IiwiYWRkIjoiMTA0LjIxLjU1LjIzNCIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiYmM4NjQwNzgtZGNmMy00YmY0LThkYmYtY2E5ZjIwMGI1NmJlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9saW5rd3MiLCJob3N0IjoiZ3dkZWYuc2JzIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiTm9uZV9Ob25lX3ZtZXNzXzA3NDkiLCJhZGQiOiIxMDQuMTguMTE0LjI0OSIsInBvcnQiOiIyMDg2IiwidHlwZSI6Im5vbmUiLCJpZCI6IjdkOTJmZmM5LTAyZTEtNDA4Ny04YTQ2LWNjNGQ3NjU2MDkxNyIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiJnaXRodWIuY29tL0FsdmluOTk5OSIsImhvc3QiOiJtMTE2LjE2NDc0OC54eXoiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi5YWz5rOoVEdAZGFmZWlfZGkg6Iux5Zu9IDAyIiwiYWRkIjoiaGFhLmRhc2h1YWkuY3lvdSIsInBvcnQiOiI0NTA2NiIsInR5cGUiOiJub25lIiwiaWQiOiJjMTlhZGMxOS1jYzU2LTRmZjMtYjg0OS0xNjZmNTIyNTkwY2IiLCJhaWQiOiIwIiwibmV0IjoidGNwIiwicGF0aCI6ImdpdGh1Yi5jb20vQWx2aW45OTk5IiwiaG9zdCI6Im0xMTYuMTY0NzQ4Lnh5eiIsInRscyI6IiJ9
    ss://YWVzLTI1Ni1nY206ZTA0YWU2N2Q0ZTRjZDE2NQ@185.22.153.235:2019#%E5%85%B3%E6%B3%A8TG%40dafei_di%20%E4%BF%84%E7%BD%97%E6%96%AF%2007
    vmess://eyJ2IjoiMiIsInBzIjoiM3zwn4ev8J+HtTEgfCAgMS44TUIvc3w1NCV8WW91dHViZXxPcGUuLi4iLCJhZGQiOiJzc2x2cG4uNTFqb2IuY29tIiwicG9ydCI6IjE0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiYTZhMGQ5MDEtNjdlOS00NjBhLTkwYjUtNjM0YzVjNGY5NzgyIiwiYWlkIjoiNjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvNjM0YzVjNGY5NzgyIiwiaG9zdCI6ImNlbnRvczciLCJ0bHMiOiJ0bHMifQ==
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@156.146.40.194:989#3%7C%F0%9F%8C%803-SK%20%7C%20%205.0MB%2Fs%7C0%25%7CYoutube%7COp...
    trojan://60f6b4c4-9d70-11ed-a4d2-f23c9164ca5d@391907cc-swgsg0-t1bnjq-1krtb.cu.plebai.net:15229?allowInsecure=0#3%7C%F0%9F%87%BA%F0%9F%87%B845%20%7C%20%202.5MB%2Fs%7C46%25%7COpenai%7CGem...
    vmess://eyJ2IjoiMiIsInBzIjoiM3zwn4yANC1USCB8ICAyLjZNQi9zfDU1JXxOZXRmbGl4fE8uLi4iLCJhZGQiOiIzOC40Ny45Ni4zMCIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiMTY0YTZhZDAtNDc2YS00YmFlLWI3OGYtYTNkMzdjZjBmNDE0IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9sempqaiIsImhvc3QiOiJ0aC5semo1MjBoeHcuZHBkbnMub3JnIiwidGxzIjoidGxzIn0=
    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@125.141.31.72:15098#3%7C%F0%9F%87%B0%F0%9F%87%B72%20%7C%20%201.5MB%2Fs%7C44%25%7COpenai
    vmess://eyJ2IjoiMiIsInBzIjoiM3zwn4ep8J+HqjUgfCAgMS40TUIvc3wwJXxZb3V0dWJlfE9wZW4uLi4iLCJhZGQiOiJkZS52bWVzcy5jb21ucG1qcy5jb20iLCJwb3J0IjoiNDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6ImNlYWFmNjUzLTk4NzQtNThjNi1iMTAwLTA5MmMwMWExZjczZCIsImFpZCI6IjAiLCJuZXQiOiJncnBjIiwicGF0aCI6InZtZXNzLWdycGMiLCJob3N0IjoiZGUudm1lc3MuY29tbnBtanMuY29tIiwidGxzIjoidGxzIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiM3zwn4et8J+HsDEgfCAgMS44TUIvc3wxNSV8RGlzbmV5fFlvdXQuLi4iLCJhZGQiOiJiYzg0MmI0OS1zd2V4czAtdDFydDVlLTFzMDl4LmhnYzEudGNwYmJyLm5ldCIsInBvcnQiOiI4MDgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjYyYjc4MjRlLTQ3ZGMtMTFlZi05ZjJkLWYyM2M5MTY0Y2E1ZCIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6ImJyb2FkY2FzdGx2LmNoYXQuYmlsaWJpbGkuY29tIiwidGxzIjoiIn0=
    trojan://5e2f888c-68ef-11ef-96ca-f23c9164ca5d@13c2c931-swin40-swy6li-tni2.cu.plebai.net:15229?allowInsecure=0&sni=13c2c931-swin40-swy6li-tni2.cu.plebai.net#3%7C%F0%9F%87%BA%F0%9F%87%B863%20%7C%20%202.1MB%2Fs%7C46%25%7COpenai%7CGem...
    trojan://def14a51-e0d9-11ec-8429-f23c91cfbbc9@4560c642-swin40-tjuq6l-wf62.cu.plebai.net:15229?allowInsecure=0&sni=4560c642-swin40-tjuq6l-wf62.cu.plebai.net#3%7C%F0%9F%87%BA%F0%9F%87%B864%20%7C%20%201.3MB%2Fs%7C46%25%7COpenai%7CGem...
    ss://YWVzLTI1Ni1jZmI6YXdzcHMwNTAx@35.165.193.21:443#13%7Ctg%E9%A2%91%E9%81%93%3A%40ripaojiedian
    trojan://RlzoEILU@36.151.251.60:28296?allowInsecure=0&sni=cdn.egvra.cn#15%7CCN_speednode_0009
    vmess://eyJ2IjoiMiIsInBzIjoiTm9uZV9Ob25lX3ZtZXNzXzAxIiwiYWRkIjoiMTA0LjE4LjExNC4xIiwicG9ydCI6IjIwODYiLCJ0eXBlIjoibm9uZSIsImlkIjoiN2Q5MmZmYzktMDJlMS00MDg3LThhNDYtY2M0ZDc2NTYwOTE3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6ImdpdGh1Yi5jb20vQWx2aW45OTk5IiwiaG9zdCI6Im0xMTYuMTY0NzQ4Lnh5eiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiTm9uZV9Ob25lX3ZtZXNzXzAyIiwiYWRkIjoiMTA0LjE4LjExNC4yIiwicG9ydCI6IjIwODYiLCJ0eXBlIjoibm9uZSIsImlkIjoiN2Q5MmZmYzktMDJlMS00MDg3LThhNDYtY2M0ZDc2NTYwOTE3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6ImdpdGh1Yi5jb20vQWx2aW45OTk5IiwiaG9zdCI6Im0xMTYuMTY0NzQ4Lnh5eiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiTm9uZV9Ob25lX3ZtZXNzXzAzIiwiYWRkIjoiMTA0LjIxLjIzOC4zIiwicG9ydCI6IjIwODYiLCJ0eXBlIjoibm9uZSIsImlkIjoiN2Q5MmZmYzktMDJlMS00MDg3LThhNDYtY2M0ZDc2NTYwOTE3IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6ImdpdGh1Yi5jb20vQWx2aW45OTk5IiwiaG9zdCI6Im0xMTYuMTY0NzQ4Lnh5eiIsInRscyI6IiJ9
    

</details>

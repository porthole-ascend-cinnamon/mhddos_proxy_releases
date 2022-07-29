## IT Army of Ukraine Official Tool

#### See [Configuration and options](#-configuration-and-options) on how to change the interface language 
#### [Jump to installation](#-install-and-run)

### ⭐ Advantages

- Own proxy database creates the attack from the whole world, which makes it much more difficult to protect against
- Efficient on a large number of targets simultaneously
- A variety of different methods, both "classic" and proprietary ones
- Multiple (over 5) languages support 
- Frequent automatic updates without user intervention

### ⏱ Recent updates

- **29.07.2022** Internal optimizations, BYPASS method improvements
- **18.07.2022** Added new languages (de | pl | lt | nl | jp | it | cn)
- **13.07.2022** Added linux/arm64 build. Added `no-updates` option to disable auto-updates (not recommended)

### 💽 Install and run 

Attention! Updates happen automatically, all steps except the last one need to be done only at the first time!

#### Windows

Our software does not contain viruses, but some antiviruses identify such software as potentially dangerous and block the files.
You may need to allow running the downloaded file, or disable your antivirus.

1. Download the latest [x64 version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win.exe)
   (or [x86 (32-bit)](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win_x86.exe) version if needed)
   and save to a convenient location
2. To start the attack, simply launch the file by double-click

#### Linux

1. To download the x64 (amd64) version, use the command:  
`curl -Lo mhddos_proxy_linux https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux`  
And for the aarch64 (arm64) version, the command:  
`curl -Lo mhddos_proxy_linux https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64`  
2. Next, run `chmod +x mhddos_proxy_linux`
3. To start the attack, run `./mhddos_proxy_linux`

To increase max threads limit, use the following command (requires `root`, repeat after system reboot)
```
sysctl -w net.ipv4.ip_local_port_range="16384 65535"
```

#### macOS

1. Open the Terminal
2. To download the latest version, use the command:  
`curl -Lo mhddos_proxy_mac https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_mac`
3. Next, run `chmod +x mhddos_proxy_mac && sudo xattr -d com.apple.quarantine mhddos_proxy_mac` (you'll need to enter your password)
4. To start the attack, run `./mhddos_proxy_mac`

#### Docker

1. Install and launch [Docker](https://docs.docker.com/desktop/#download-and-install)
2. Run with the command `docker run -it --rm --pull always --net=host ghcr.io/porthole-ascend-cinnamon/mhddos_proxy`

### 🛠 Configuration and options

An **mhddos.ini** file will be created in the current directory on the first launch  
You may edit it to change configuration

    # Change language (ua | en | es | de | pl | lt | nl | jp | it | cn)
    lang = ua

    # Run multiple copies (set "auto" for max value, requires 3+ core CPU and stable network)
    copies = 1

    # Add your IP/VPN to the attack (false | true) (when using VPN or dedicated server)
    vpn = false

    # Number of threads per copy
    threads = 8000

You can also specify options via command line in `--lang en` and `--vpn` format

Full list of options is available by `--help` command

### 🐳 Community (mostly in Ukrainian)

- [Setting up with notification to Telegram](https://github.com/sadviq99/mhddos_proxy-setup)
- [VPN](https://auto-ddos.notion.site/VPN-5e45e0aadccc449e83fea45d56385b54)
- [Create a botnet of 30+ free and standalone Linux servers](https://auto-ddos.notion.site/dd91326ed30140208383ffedd0f13e5c)

### ✪ Custom proxies

To specify custom proxy(ies), use the `proxy` option

    proxy = [socks4://114.231.123.38:3065, socks5://114.231.123.38:1080]

If the list of proxies is too big, use the local or remote file option `proxies`. 
Each proxy should be on a new line

    proxies = proxies.txt | https://pastebin.com/raw/UkFWzLOt

Surely, these options are also available via command line

    --proxy socks4://114.231.123.38:3065, socks5://114.231.123.38:1080
    --proxies proxies.txt | https://pastebin.com/raw/UkFWzLOt

#### Supported formats:

    114.231.123.38:3065
    114.231.123.38:3065:username:password
    username:password@114.231.123.38:3065
    socks4://114.231.123.38:3065
    socks5://114.231.123.38:3065:username:password
    http://username:password@114.231.123.38:3065

if protocol (`socks4`|`socks5`) is not specified, `http` is used by default

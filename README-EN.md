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

- **18.07.2022** Added new languages (nl | jp | it | cn)
- **13.07.2022** Added linux/arm64 build. Added `no-updates` option to disable auto-updates (not recommended)
- **10.07.2022** It is now possible to set options via mhddos.ini file. Added DE | PL | LT languages
- **08.07.2022** For ease of install and protection against unauthorized use, the program is now distributed as an executable file

### 💽 Install and run 

Attention! Updates happen automatically, all steps except the last one need to be done only at the first time!

#### Windows

Our software does not contain viruses, but some antiviruses identify such software as potentially dangerous and block the files.
You may need to disable your antivirus or allow the downloaded file to run.
In addition, automatic updates may make your antivirus suspicious, in which case you will need to update manually

1. Download the latest [x64 version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win.exe)
   (or [x86 (32-bit)](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win_x86.exe) version if needed)
   and save to a convenient location
2. To start the attack, simply launch the file by double-click

#### Linux

1. Install `wget` if it is not installed, with the command `apt install wget`
2. To download the x64 (amd64) version, use the command  
`wget https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux`  
And for the aarch64 (arm64) version, the command  
`wget https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64 -O mhddos_proxy_linux`  
3. Run `chmod +x mhddos_proxy_linux`
4. To start the attack, run `./mhddos_proxy_linux`

Note: Tested on Ubuntu >= 18.04 and similar

#### macOS

1. Download the [latest version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_mac)
   and save to a convenient location
2. Open Terminal, go to the folder with the file and run `chmod +x mhddos_proxy_mac`
3. Next, run `./mhddos_proxy_mac`
   1. If a modal window with a message "cannot be opened" appears
   2. Go to System Preferences > Security & Privacy, and click "Open Anyway" (bottom right part of the screen)
4. From now on, run either via double-click on the file, or `./mhddos_proxy_mac` from the Terminal  
   There may be a delay up to 10s on startup, this is normal, please wait for the start

Note: Tested on macOS >= 11 (Intel and M1)

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

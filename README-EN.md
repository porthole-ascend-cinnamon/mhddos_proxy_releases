## IT Army of Ukraine Official Tool

#### See [Configuration and options](#-configuration-and-options) on how to change the interface language 

- Built-in proxy server database with a wide range of IPs around the world
- Efficient on a huge number of targets simultaneously
- A variety of different load-testing methods, both "classic" and proprietary ones
- Effective utilization of your resources due to the asynchronous architecture
- Frequent automatic updates without user intervention

### ⏱ Recent updates

<details>
<summary>Click to expand</summary>

- **10.07.2022** It is now possible to set options via mhddos.ini file. Added DE | PL | LT languages
- **08.07.2022**
    - For ease of install and protection against unauthorized use, the program is now distributed
      as an executable file
    - The ability to set own targets has been removed - IT Army of Ukraine targets are used
- **27.06.2022** Added Spanish localization - use flag `--lang es`
- **22.06.2022** Performance improvements. The `--debug` option is deprecated to avoid negative impact on performance
- **10.06.2022** Introduced `--proxy` option for providing custom proxies directly from command args
- **08.06.2022** Added `--copies auto` option to set the value automatically based on the resources available

</details>

### 💽 Install and run 

#### Windows

Our software does not contain viruses, but some antiviruses identify such software as potentially dangerous and block the files.
You may need to disable your antivirus or allow the downloaded file to run.
In addition, automatic updates may make your antivirus suspicious, in which case you will need to update manually

1. Download the latest [x64 version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win.exe)
   (or [x86 version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win_x86.exe) if needed)
   and save to a convenient location
2. To join the attack, simply launch the file by double-click

#### Linux

1. Download the latest
   version [by link](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux)
   and save to a convenient location
2. Open a terminal, go to the folder with the file and run `chmod +x mhddos_proxy_linux`
3. Run `./mhddos_proxy_linux` from the terminal

Note: Tested on Ubuntu >= 18.04 and similar

#### macOS

1. Download the latest
   version [by link](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_mac)
   and save to a convenient location
2. Open Terminal, go to the folder with the file and run `chmod +x mhddos_proxy_mac`
3. Next, run `./mhddos_proxy_mac` - a modal window will appear with a message "cannot be opened"
4. Go to System Preferences > Security & Privacy, and click "Open Anyway" (bottom right part of the screen)
5. From now on, run either via double-click on the file, or `./mhddos_proxy_mac` from the Terminal
   There may be a delay up to 10s on startup, this is normal, please wait for the start

Note: Tested on macOS >= 11 (Intel and M1)

#### Docker

1. Install and launch [Docker](https://docs.docker.com/desktop/#download-and-install)
2. Run with the command `docker run -it --rm --pull always --net=host ghcr.io/porthole-ascend-cinnamon/mhddos_proxy`

### 🛠 Configuration and options

An **mhddos.ini** file will be created in the current directory on the first launch  
You may edit it to change configuration

Change language:

    lang    = ua | en | es | de | pl | lt

Run multiple copies (set "auto" for max value, requires 3+ core CPU and stable network):

    copies  = 1 | 2 | auto

Add your IP/VPN to the attack (when using VPN or dedicated server):

    vpn     = true

Number of threads per copy:

    threads = 8000

You can also specify options via command line in `--lang en` and `--vpn` format

Full list of options is available by `--help` command

### 🐳 Community (mostly in Ukrainian)

- [Create a botnet of 30+ free and standalone Linux servers](https://auto-ddos.notion.site/dd91326ed30140208383ffedd0f13e5c)
- [Analysis of mhddos_proxy](https://telegra.ph/Anal%D1%96z-zasobu-mhddos-proxy-04-01)
- [VPN](https://auto-ddos.notion.site/VPN-5e45e0aadccc449e83fea45d56385b54)
- [Setting up with notification to Telegram](https://github.com/sadviq99/mhddos_proxy-setup)

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

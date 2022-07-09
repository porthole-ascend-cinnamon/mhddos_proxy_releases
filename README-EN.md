## IT Army of Ukraine Official Tool

### Use `--lang en` to enable English or `--lang es` for Spanish translation

- Built-in proxy server database with a wide range of IPs around the world
- Efficient on a huge number of targets simultaneously
- A variety of different load-testing methods, both "classic" and proprietary ones
- Effective utilization of your resources due to the asynchronous architecture
- Frequent automatic updates without user intervention

### ⏱ Recent updates

<details>
<summary>Click to expand</summary>

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
In addition, automatic updates may make your antivirus suspicious, in which case you will need to update manually.  

1. Download the latest [x64 version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win.exe)
   (or [x86 version](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win_x86.exe) if needed)
   and save to a convenient location, for example to the Desktop
2. To join the attack, simply launch the file by double-click
3. If you want to change the settings, run the file through the cmd command line and add options after the filename

#### Linux

1. Download the latest
   version [by link](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux)
   and save to a convenient location
2. Open a terminal, go to the folder with the file and run `chmod +x mhddos_proxy_linux`
3. Run `./mhddos_proxy_linux` from the terminal, optionally add options after the file name

Note: Tested on Ubuntu >= 18.04 and similar

#### macOS

1. Download the latest
   version [by link](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_mac)
   and save to a convenient location
2. Open Terminal, go to the folder with the file and run `chmod +x mhddos_proxy_mac`
3. Next, run `./mhddos_proxy_mac` - a modal window will appear with a message "cannot be opened".
4. Go to System Preferences > Security & Privacy, and click "Open Anyway" (bottom right part of the screen)
5. From now on, run either `./mhddos_proxy_mac` from the terminal, optionally adding options after the file name, or simply double-click the file.
   There may be a delay up to 10s on startup, this is normal, please wait for the start.

Note: Tested on macOS >= 11 (Intel and M1)

#### Docker (not recommended, use the options above)

    docker run -it --rm --pull always --net=host ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:binary

### 🛠 Configuration and options (needs to be run from cmd/terminal)

Add options after the filename in the arbitrary order

- Change language - use `--lang en` or `--lang es` option
- Consider adding your IP/VPN to the attack (especially when running on dedicated server), add flag `--vpn`
- Number of threads: `-t XXXX` - the default is 8000 (or 4000 if the machine has only one CPU).
- Number of copies: `--copies X` or `--copies auto` - in case you have 4+ core CPU and stable network 100+ Mb/s

### 🐳 Community (mostly in Ukrainian)

- [Create a botnet of 30+ free and standalone Linux servers](https://auto-ddos.notion.site/dd91326ed30140208383ffedd0f13e5c)
- [Analysis of mhddos_proxy](https://telegra.ph/Anal%D1%96z-zasobu-mhddos-proxy-04-01)
- [VPN](https://auto-ddos.notion.site/VPN-5e45e0aadccc449e83fea45d56385b54)

### ✪ Custom proxies

#### Supported formats:

    114.231.123.38:3065
    114.231.123.38:3065:username:password
    username:password@114.231.123.38:3065
    socks4://114.231.123.38:3065
    socks5://114.231.123.38:3065:username:password
    http://username:password@114.231.123.38:3065

if protocol (`socks4`|`socks5`) is not specified, `http` is used by default

#### Command line

To specify custom proxy (or multiple) use `--proxy` option:

    --proxy socks4://114.231.123.38:3065 socks5://114.231.123.38:1080

If the list of custom proxies gets too long, consider switching to file (local or remote) configuration.
Each proxy should be on a new line.

    --proxies proxies.txt
    --proxies https://pastebin.com/raw/UkFWzLOt

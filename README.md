## IT Army of Ukraine Official Tool

#### [English version - click here](/README-EN.md)
#### [Перейти до встановлення](#-встановлення-та-запуск)
### ⭐ Переваги

- Власна база проксі забезпечує атаку з усіх кінців світу, що значно ускладнює захист від неї
- Ефективна робота з великою кількістю цілей одночасно
- Безліч різноманітних методів, як "класичних", так і авторських
- Підтримка багатьох (більше 5) мов
- Постійні покращення, автоматичні оновлення без втручання користувача

### ⏱ Останні оновлення

- **01.08.2022** Можливіcть задати мережеві інтерфейси: `--bind local_addr1 local_addr2`
- **29.07.2022** Внутрішні оптимізації, допрацювання методу BYPASS
- **18.07.2022** Додано нові мови (de | pl | lt)

### 💽 Встановлення та запуск

Увага! Оновлення відбуваються автоматично, усі пункти окрім останнього треба виконувати лише в перший раз!

#### Windows

У нашому ПО немає вірусів, але деякі антивіруси визначають ПО для атак як потенційно небезпечне, і блокують файли.
Можливо, вам доведеться дозволити виконання завантаженого файлу, або вимкнути свій антивірус.

1. Завантажте останню [x64 версію](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win.exe)
   (або [x86 (32-bit)](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win_x86.exe) версію за потреби)
   і збережіть у зручному місці
2. Для початку, просто запустіть файл подвійним кліком

#### Linux

1. Для завантаження x64 (amd64) версії, скористайтеся командою:  
`curl -Lo mhddos_proxy_linux https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux`  
А для aarch64 (arm64) версії, командою:  
`curl -Lo mhddos_proxy_linux https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64`
3. Далі, виконайте `chmod +x mhddos_proxy_linux`
4. Для початку атаки, виконуйте `./mhddos_proxy_linux`

Для збільшення ліміту на кількість потоків, виконайте наступну команду (потребує `root` прав, працює до перезапуску системи)
```
sysctl -w net.ipv4.ip_local_port_range="16384 65535"
```

#### macOS

1. Відкрийте Terminal
2. Завантажте додаток командою  
`curl -Lo mhddos_proxy_mac https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_mac`
3. Виконайте `chmod +x mhddos_proxy_mac && sudo xattr -d com.apple.quarantine mhddos_proxy_mac` (потрібно буде ввести пароль)
4. Для початку атаки, виконуйте `./mhddos_proxy_mac`

#### Особливості запуску прiложення під Mac

Запускаючи програму під macOS, ви можете зіткнутися з наступним попередженням
```
Загальну кількість потоків зменшено до 206 через обмеження вашої системи
```

Щоб збільшити кількість дозволених відкритих файлів та потоків програми, 
вам потрібно виконати наступні команди з кореневого каталогу проекту 
(усі команди виконувати під `sudo`)
```
sysctl -w kern.maxfiles=65536
sysctl -w kern.maxfilesperproc=65536
cp darwin/limit.maxfiles.plist /Library/LaunchDaemons
chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
launchctl limit maxfiles
```
та перезапустити систему. Після цього всі обмеження мають бути зняті.

#### Docker

1. Встановіть та запустіть [Docker](https://docs.docker.com/desktop/#download-and-install)
2. Запускайте командою `docker run -it --rm --pull always --net=host ghcr.io/porthole-ascend-cinnamon/mhddos_proxy`

### 🛠 Налаштування та параметри

При першому запуску в поточній папці буде створено файл **mhddos.ini**  
Відредагуйте його для зміни налаштувань

    # Зміна мови (ua | en | es | de | pl | lt)
    lang = ua

    # Запуск декількох копій (вкажіть "auto" для максимального значення, при наявності 3+ ядер CPU та стабільної мережі)
    copies = 1

    # Додати ваш IP/VPN до атаки (при запуску через VPN або на виділеному сервері)
    vpn = false

    # Кількість потоків на кожну копію
    threads = 8000

Окрім того, параметри можна задавати у командному рядку у форматі `--lang en` та `--vpn`

Повний перелік опцій доступний за командою `--help`

### 🐳 Комьюніті

- [Налаштування з нотифікаціями у Телеграм](https://github.com/sadviq99/mhddos_proxy-setup)
- [VPN](https://auto-ddos.notion.site/VPN-5e45e0aadccc449e83fea45d56385b54)
- [Створення ботнету з 20+ безкоштовних серверів](https://auto-ddos.notion.site/dd91326ed30140208383ffedd0f13e5c)

### ✪ Власні проксі

Для того, щоб вказати власні проксі використовуйте опцію `proxy`

    proxy = [socks4://114.231.123.38:3065, socks5://114.231.123.38:1080]

Якщо перелік проксі занадто великий, скористайтеся опцією передачі через локальний чи віддалений файл `proxies`,
кожен проксі з нового рядка

    proxies = proxies.txt | https://pastebin.com/raw/UkFWzLOt

Звичайно, ці опції доступні і з командного рядка

    --proxy socks4://114.231.123.38:3065 socks5://114.231.123.38:1080
    --proxies proxies.txt | https://pastebin.com/raw/UkFWzLOt

#### Підтримувані формати:

    114.231.123.38:3065
    114.231.123.38:3065:username:password
    username:password@114.231.123.38:3065
    socks4://114.231.123.38:3065
    socks5://114.231.123.38:3065:username:password
    http://username:password@114.231.123.38:3065

якщо протокол (`socks4`|`socks5`) не вказано, то буде обрано `http`

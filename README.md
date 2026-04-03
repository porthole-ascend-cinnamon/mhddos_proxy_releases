## IT Army of Ukraine Official Tool

УВАГА!  ⚠️
Утіліти IT ARMY а також команда розвідки в повному складі залишаються вірними патріотами України, які працюють проти ворога кожен день.
Всі розвідники і розробники утіліт, які працювали з вами всі 4+ років, залишаються єдиними в своїй позиції, без винятку.

Інформація про компрометацію нашої команди є ініціативою адміністратора ТГ-каналу, який, спираючись на непідтверджені зв’язки з МінЦифри, намагався отримати доступ до чутливого коду та конфігурації під виглядом необхідного аудиту, хоча багато років він цього аудиту не потребував.

Оскільки ця особа не підтвердила ані організацію, яку він представляє, ані мету своїх потреб, ми були вимушені відмовити задля безпеки.
Ми інформуємо вас через утіліти, бо не маємо доступу до офіційного каналу.

Якщо ви сумніваєтеся в поточних цілях, ви завжди можете подивитися, куди спрямовано трафік.
Ми просимо вас не зупиняти сервери, оскільки робота продовжується і від адміністратора ТГ каналу ви не отримаєте правдивої інформації.

Скоріше за все, ми будемо створювати новий канал. Очікуйте подальших новин.

Дякуємо за довіру. Слава Україні!

#### [English version - click here](/README-EN.md)
#### 💁 [Технічна підтримка](https://t.me/+H6PnjkydZX0xNDky)
### ⭐ Переваги

- Власна база проксі забезпечує атаку з усіх кінців світу, що значно ускладнює захист від неї
- Ефективна робота з великою кількістю цілей одночасно
- Безліч різноманітних методів, як "класичних", так і авторських
- Постійні покращення, автоматичні оновлення без втручання користувача

### 💽 Встановлення та запуск

Увага! Оновлення відбуваються автоматично, усі пункти окрім останнього треба виконувати лише в перший раз!

### Windows

У нашому ПО немає вірусів, але деякі антивіруси визначають ПО для атак як потенційно небезпечне, і блокують файли.
Можливо, вам доведеться дозволити виконання завантаженого файлу, або вимкнути свій антивірус.

1. [Завантажте останню версію](https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_win.exe)
   і збережіть у зручному місці
2. Щоб розпочати, просто запустіть файл подвійним кліком

### Linux
1\. Завантажте версію для своєї платформи
##### x64 (amd64)
```
curl https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux -Lo mhddos_proxy_linux 
```
##### arm64 (aarch64)
```
curl https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64 -Lo mhddos_proxy_linux 
```

2\. Далі, виконайте `chmod +x mhddos_proxy_linux`  
3\. Для початку атаки, виконуйте `./mhddos_proxy_linux` напряму або всередині `screen`


### Docker (будь-яка платформа)

1. Встановіть та запустіть [Docker](https://docs.docker.com/desktop/#download-and-install)
2. Запускайте командою `docker run -it --rm --pull always --net=host ghcr.io/porthole-ascend-cinnamon/mhddos_proxy`

### Raspberry Pi
Aarch64 версія має працювати на RPi4, можливо і на RPi3. Головне - 64x розрядна OS.  
Перегляньте наступні Issues для додаткової інформації та вирішення проблем: 
https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/issues/13 
https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/issues/19
https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/issues/23

### Android

#### Налаштування

Потрібен [Termux](https://github.com/termux/termux-app/releases) та **рутований пристрій**
```
apt update -y && apt install -y root-repo tsu glibc-repo glibc
curl https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64 -Lo mhddos_proxy
chmod +x mhddos_proxy
grun -c mhddos_proxy
```
#### Запуск
##### arm64 (aarch64)
```
sudo grun -n ./mhddos_proxy
```
##### arm32 (armv7)
```
apt install -y qemu-user-aarch64
sudo grun -n qemu-aarch64 ./mhddos_proxy
```

### 🛠 Налаштування та параметри

При першому запуску в поточній папці буде створено файл **mhddos.ini**  
Відредагуйте його для зміни налаштувань

    # Зміна мови (ua | en | es | de | pl | lt)
    lang = ua

    # Запуск декількох копій (вкажіть "auto" для максимального значення, при наявності 3+ ядер CPU та стабільної мережі)
    copies = 1

    # Кількість потоків на кожну копію (для активації приберіть решітку на наступному рядку)
    #threads = 8000

    # Атака через мій IP/VPN у % від 0 до 100 (обов'язковий VPN чи віддалений сервер)
    use-my-ip = 0

Окрім того, параметри можна задавати у командному рядку у форматі `--lang en`

Повний перелік опцій доступний за командою `--help`

### ✪ Власні проксі
<details>
<summary>Розгорнути</summary>

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
</details>

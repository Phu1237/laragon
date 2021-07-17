# Laragon - The Dev Environment for Web Artisans

## Download

There are 2 ways:

- You can download the newest released version [here](https://github.com/Phu1237/laragon/releases).
- Clone this repo
  - You can use scripts at [#scripts](#scripts).

## Scripts

Please read carefully the content below and **use this scripts at your own risk**!

Use [scripts.bat](scripts.bat) at root of your laragon.

Available scripts:

- Rename folder .git to .git.saved - Rename folder .git.saved to .git
  - Prevent some git bugs with your code in /www folder
- Update Laragon
  - This method just work when you **clone** this repo.
  - This method is working like **hard-reset** all your laragon files of laragon and pull new commits (changes) from the repo. You can call it "Update new version".
  - Be careful when you run it because it will **overwrite** your changes and **remove** your files.
  - This will **not affect** to your files in:
    - /bin/heidisql/portable_settings.txt (heidisql settings)
    - /data
    - /tmp
    - /usr (all of laragon settings)
    - /www (except /www/index.php)
  - **All other files will be replaced or removed**.

**Notes:**

- If you want to update, please back up your dependencies extensions (ex: php_pdo_sqlsrv) because you will lose all your changes if you run update.

## Manual update

If you want to manual update new version of dependencies, download the file with the instructions below and extract it to **/bin/\<dependency\>/new_version_folder** (ex: /bin/php/php-7.4.20-nts-Win32-vc15-x64)

- Apache: Download the zip file [VC15](https://www.apachelounge.com/download/VC15/) or [VC16](https://www.apachelounge.com/download/)
- HeidiSQL: Download the portable version [here](https://www.heidisql.com/download.php)
- MySQL:
  - MariaDB: Download the zip file [here](https://mariadb.org/download/)
    - MariaDB Server Version: *Any*
    - Operating System: Windows
    - Architecture: *Any*
    - Package Type: Zip file
- Nginx: Download the zip file [here](http://nginx.org/en/download.html)
- PHP: Download the zip file [here](https://windows.php.net/download/)

**Notes:**

- **Apache SSL is broken right now, it is a bug, error of Apache, no way to fix this right now. If you want to using SSL, please use Nginx**.
- All dependencies in this repo use 64 bit version.
- For PHP: I prefer *Non Thread Safe* version.
- Apache & PHP must be the same VS version (ex: VS15).
- To enable http2:
  - Uncomment the line

  ```bash
  LoadModule http2_module modules/mod_http2.so
  ```

  - Add this line at the end of the file

  ```bash
  Protocols h2 h2c http/1.1
  ```

## What is Laragon?

Laragon is a portable, isolated, fast & powerful universal development environment for PHP, Node.js, Python, Java, Go, Ruby. It is fast, lightweight, easy-to-use and easy-to-extend.

Laragon is great for building and managing modern web applications. It is focused on performance  - designed around stability, simplicity, flexibility and freedom.

Laragon is very lightweight and will stay as lean as possible. The core binary itself is less than 2MB and uses less than 4MB RAM when running.

Laragon doesn't use Windows services. It has its own `service orchestration` which manages services asynchronously and non-blocking so you'll find things run fast & smoothly with Laragon.

Enjoy!

## Description

For description and other information, go to the [base repo](https://github.com/leokhoa/laragon).

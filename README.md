# Laragon - The Dev Environment for Web Artisans

## Download

There are 2 ways:

- You can download the newest released version [here](https://github.com/Phu1237/laragon/releases).
- Clone this repo
  - You can update new version throw command at [#update](#update).
  - You should rename .git folder after clone to another name (ex: .git to .git1) to prevent some bugs with git and rename it back when you want to update new version (ex: .git1 to .git).

## Update

Run below command to pull all new changes from this repo and remove all "auto generated" files. You can call it "Update new version".

```bash
git fetch origin && git reset --hard origin/master && git clean -f -d
```

**Notes:**

- This method just work when you clone this repo.
- This will not affect to your files in /data and /www (except www/index.php).
- Be careful when you run it because it will replace your changes to laragon files.

## Dependencies

If you want to download newest version of dependencies:

- Apache: Download the zip file [VC15](https://www.apachelounge.com/download/VC15/) or [VC16](https://www.apachelounge.com/download/)
- HeidiSQL: Download the portable version [here](https://www.heidisql.com/download.php)
- MySQL:
  - MariaDB: Download the zip file [here](https://mariadb.org/download/)
    - MariaDB Server Version: *Any*
    - Operating System: Windows
    - Architecture: *Any*
    - Package Type: Zip file
- PHP: Download the zip file [here](https://windows.php.net/download/)

**Notes:**

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

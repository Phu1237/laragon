# Laragon - The Dev Environment for Web Artisans

## Download

You can download the newest released version [here](https://github.com/Phu1237/laragon/releases).

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

### Notes

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

## About

PHP Completion Daemon(PHPCD), improved PHP omni-completion,
based on the [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim).

PHP completion info is generated by the `PHPCD.php` and the `PHPID.php`,
using the [PHP Reflection Mechanism](http://php.net/manual/en/book.reflection.php).

PHPCD only works with [NeoVim](http://neovim.io/). Please do not try to use it under [Vim](http://www.vim.org/).

## Features
 * Powerful but fast & lightweight
 * Correct restriction of static or standard methods based on context ( show only static methods with `::` and only standard with `->`)
 * Real support for `self::` and `$this->` with the aforementioned context restriction
 * ~~Constant variable completion (not just `define(VARIABLE, 1)` but `const VARIABLE = 1`)~~
 * Better class detection:
     - Recognize `/* @var $yourvar YourClass */` type mark comments
     - Recognize `$instance = new Class;` class instantiations
     - Recognize `$instance = Class::getInstance();` singleton instances
     - Recognize `$date = DateTime::createFromFormat(...)` built-in class return types
     - Recognize type hinting in function prototypes
     - Recognize types in `@param` lines in function docblocks
     - Recognize `$object = SomeClass::staticCall(...)` return types from docblocks
     - Recognize array of objects via docblock like `$foo[42]->` or for variables created in `foreach`
 * Displays docblock info in the preview for methods and properties
 * Updated built-in class support with constants, methods and properties
 * Updated list of PHP constants
 * Updated list of built-in PHP functions
 * Namespace support
 * Enhanced jump-to-definition on <kbd>ctrl</kbd>+<kbd>]</kbd>

## Install Guide

### System requirements
 1. PHP 5.3+
 2. PHP socket extension enabled
 3. PHP Process Control enabled
 4. PHP Msgpack extension enabled
 5. PHP Composer
 6. NeoVim

#### Install Msgpack Extension

As the latest version(0.5.6) of msgpack-php does not support the msgpack 2.0,
we need to build the extension from the [master](https://github.com/msgpack/msgpack-php) branch.

```
git clone https://github.com/msgpack/msgpack-php.git
cd msgpack-php
phpize
./configure
make
sudo make install
```

Put the following lines into your php.ini:
```
extension=msgpack.so
msgpack.php_only = 0
```

### vim-plug
 1. Install and configure the [Vim-Plug](https://github.com/junegunn/vim-plug) plugin manager, [follow the instructions here](https://github.com/junegunn/vim-plug/blob/master/README.md)
 2. Add the following line to your `.vimrc`:

         Plug 'lvht/phpcd.vim'
 3. Source your `.vimrc` with `:so %` or otherwise reload your vim
 4. Run the `:PlugInstall` commmand

## Usage

PHPCD depends composer autoload mechanism. In order to use PHPCD, we first need
to run `composer dump-autoload` the generated the `autoload.php`, which is
essential for PHPCD.

And if you want PHPCD to `Jump to Interface's Implementation`, you need to use
the `-o` option for dumpping autoload file.

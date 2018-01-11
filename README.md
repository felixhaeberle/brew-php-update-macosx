# brew-php-update-macosx
Here are some brew commands to **update your macosx php version to 7.1**, including curl and mcrypt.

### First step

If you haven't `brew` installed on your local machine, feel free to do so with

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Copy and paste that snippet in your `Terminal` and the script will guide you through the installation process.

You can get more info for the installation process here: [brew.sh](https://brew.sh)

### Second step

If you have brew installed, follow the commands provided in the `brew_php71_macosx.sh` file to install php 7.1 on your machine.

Or type in the following:

```
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

brew install --with-openssl curl
brew install --with-homebrew-curl --with-apache php71
brew install php71-mcrypt php71-imagick

brew info php71
sudo apachectl restart
source ~/.profile
```

### Third step - **Good to know**

If you check your php version with `php -v` in your terminal and it still shows the old version, type in

`export PATH=/usr/local/php5/bin:$PATH`

The PATH settings should then update to the proper version.

### Links

- [Best php source of macosx (with upgrade instructions) (php-osx.liip.ch)](https://php-osx.liip.ch/)
- [Stackoverflow on HowTo Upgrade to PHP 7.1](https://stackoverflow.com/questions/2526085/how-do-i-upgrade-php-in-mac-os-x)
- [Nice blog post on howto upgrade](https://developerjack.com/blog/2016/installing-php71-with-homebrew/)

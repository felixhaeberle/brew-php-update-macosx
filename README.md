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

brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

brew install --with-openssl curl
brew install --with-homebrew-curl --with-apache php71
brew install php71-mcrypt php71-imagick

brew info php71
sudo apachectl restart
source ~/.profile

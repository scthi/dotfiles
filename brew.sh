#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install gpg

# tmux
brew install doxygen
brew install tmux
brew install tmux-mem-cpu-load
brew install homebrew/completions/tmuxinator-completion

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install httping
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
#brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli

# Fonts
brew tap caskroom/fonts
brew cask install font-fantasque-sans-mono
brew cask install font-fira-code
brew cask install font-source-code-pro

# Java
brew cask install java
brew cask install jce-unlimited-strength-policy
brew install maven
brew install homebrew/completions/maven-completion

# Android
brew install android-sdk

# MongoDB
brew install mongodb
brew services start mongodb
brew cask install robomongo

# Redis
brew install redis
brew services start redis
brew cask install medis

# Nodejs
brew install node@6
npm -g install grunt-cli
npm -g install nodemon
npm -g install yarn

# PHP / Composer
brew install homebrew/php/php56 --with-gmp
brew install homebrew/php/php56-xdebug
brew install homebrew/php/composer
brew install homebrew/completions/composer-completion

# Vagrant
brew cask install virtualbox
brew cask install vagrant
brew install homebrew/completions/vagrant-completion
vagrant plugin install landrush

# Remove outdated versions from the cellar.
brew cleanup

# check status
brew doctor

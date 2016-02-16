Home Configuration
------------------

Installation guide for development system

## Recent Changelog

* Added dwm config.h for OS X  
  See dwm directory for details

## basic

* copy these files below into your home directory
  * .bashrc
  * .vimrc
  * .zshrc

## font configuration

* Get Gulim.ttc and Batang.ttc from your window installation, and install them using guiconfig/install-krfonts.
* copy .fonts.conf into your home directory to make them default monospace fonts.
* Suggests D2Coding as all-in-one coding fonts.

## UIM configuration

* copy .uim.d/ into your home directory.
* install uim-byeoru(will include other uim modules as well)

## Linux configuration

* debcheckout dwm
* edit config.def.h
  * change modifier key into window key(Meta).
  * remove mod-space shortcuts because we use it for language change.

Also trying XMonad, it worths a try!

### npm configuration on arch linux

pacman-provided npm uses '/usr' as prefix, so you better change it '/usr/local' before installing npm packages globally. also, don't forget to allow yourself to write '/usr/local' (I added myself to wheel group and change permission respectively)

## OS X configuration

* Install XQuartz
* `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
* `brew install vim --override-system-vi`
* `brew install terminator`
* INSTALL DWM
  * See dwm directory for detailed description
  * dwm install guide: https://gist.github.com/vangberg/311377
* `defaults write com.apple.dock no-bouncing -bool TRUE`
* `sudo nvram SystemAudioVolume=%80` works only once...
* `brew install https://raw.githubusercontent.com/myshen/homebrew/012eb661d98c8701332a65117f10ef39a49a413d/Library/Formula/toggle-osx-shadows.rb`
  * remove shadow from window.
* Install f.lux for reduce blue lights
  * `brew cask install flux` <- you need cask.
* Install Clipmenu for managing clipboards
  * `brew cask install clipmenu` 

## Additional Configurations

* `pip install asciinema` : take a look : https://asciinema.org/

Home Configuration
------------------

Installation guide for development system

## Recent Changelog

* Use XMonad instead of DWM
  * More flexibility I think

## basic

* copy these files below into your home directory
  * `.zshrc` Using zsh as my default shell
  * `.xmonad` Using XMonad as my default window manager
  * `.vimrc.after` Using [janus](https://github.com/carlhuda/janus).
  * `.config` for various application configurations
    * visual studio code
    * fontconfig
    * terminator

### vim configuration

```sh
$ curl -L https://bit.ly/janus-bootstrap | bash
```

## font configuration

* Get Gulim.ttc and Batang.ttc from your window installation, and install them using guiconfig/install-krfonts.

## UIM configuration

* copy .uim.d/ into your home directory.
* install uim-byeoru(will include other uim modules as well)

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
* `brew install https://raw.githubusercontent.com/myshen/homebrew/012eb661d98c8701332a65117f10ef39a49a413d/Library/Formula/toggle-osx-shadows.rb`
  * remove shadow from window.
* Install f.lux for reduce blue lights
  * `brew cask install flux` <- you need cask.
* Install Clipmenu for managing clipboards
  * `brew cask install clipmenu`


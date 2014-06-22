Home Configuration
------------------

You can install them separately.

## basic

* copy these files below into your home directory
  * .bashrc
  * .vimrc

## font configuration

* Get Gulim.ttc and Batang.ttc from your window installation, and install them using guiconfig/install-krfonts.
* copy .fonts.conf into your home directory to make them default monospace fonts.

## UIM configuration

* copy .uim.d/ into your home directory.
* install uim-byeoru(will include other uim modules as well)

## Linux : dwm configuration

* debcheckout dwm
* edit config.def.h
  * change modifier key into window key(Meta).
  * remove mod-space shortcuts because we use it for language change.

## OS X : homebrew configuration

* `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
* `brew install vim --override-system-vi`
* `brew install terminator`
* `brew install dwm`
* dwm install guide: https://gist.github.com/vangberg/311377

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

## dwm, sakura configuration

* debcheckout dwm
* edit config.def.h
  * change modifier key into window key.
  * remove mod-space shortcuts
* clone my sakura package to use it with your dwm
  * git clone https://github.com/blmarket/sakura.git
  * git-buildpackage sakura
  * apt-get install [some deb file built]

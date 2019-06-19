# st - simple terminal emulator
My configured version of ***st*** (a lightweight terminal emulator made by the good people
at http://suckless.org).

I've installed the following patches (in that order):
1. anysize - allows st to fill entire space allocated by tiling wm. It removing unsightly gaps caused by default behavior of snapping dimensions to nearest multiple of character size.
2. clipboard - sets selection to `CLIPBOARD`, not just `PRIMARY`.
3. vertcenter - vertically center lines in the space available. (Check out before/after [screenshots](https://st.suckless.org/patches/vertcenter/))
4. solarized - press Mod4+F6 to switch between dark and light modes

## Thoughts
* Patches like `scrollback`, `externalpipe`, `keyboard_select` add functionality already implemented by Tmux. They're really needed.

Gentoo
------------
Just install my [overlay](https://github.com/mobalt/gentoo-mods) and emerge

Requirements
------------
In order to build st you need several header files.

In Ubuntu, run this to install required header files:
```shell
sudo apt install libx11-dev libxft-dev libxinerama-dev
```


Installation
------------
If needed, edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Build and install:
```shell
sudo make clean install
```

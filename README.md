# st - simple terminal emulator
My configured version of ***st*** (a lightweight terminal emulator made by the good people
at http://suckless.org).

I've installed the following patches (in that order):
1. [clipboard](https://github.com/mobalt/st/commit/e31ca3d92bcc61bf619d99ff1136ba5f913093e8) - sets selection to `CLIPBOARD`, not just `PRIMARY`.
2. [vertcenter](https://github.com/mobalt/st/commit/418b77cfa9a89d8a93f94a56085b2eedb46627d9) - vertically center lines in the space available. (Check out before/after [screenshots](https://st.suckless.org/patches/vertcenter/))
3. ~~[delkey](https://github.com/mobalt/st/commit/20b97e9157d6198f6232f13667bc015e2909e8ea)~~ - return BS on pressing backspace and DEL on pressing the delete key.
4. [externalpipe](https://github.com/mobalt/st/commit/1a14280f63c3ea53246304c33cfa16979fa48836) - sends a snapshot of the visible text in terminal through a pipe, to wherever you want.
5. [anysize](https://github.com/mobalt/st/commit/ac3ce0d8a3348e509fe54dfb1e4f8d3190a17410) - allows st to fill entire space allocated by tiling wm. It removing unsightly gaps caused by default behavior of snapping dimensions to nearest multiple of character size.
6. [scrollback](https://github.com/mobalt/st/commit/89214d38c3323f0c79b6ea06a09ecbbc84da70a2) - Scrolllback through terminal output.
7. ~~colorschemes~~ - ability to add and switch from 10 colorschemes. 
8. ~~keyboard_select~~ - vim emulation.

## Thoughts
### The Good
#### externalpipe patch
This opens up so many possibilities:
1. screen | save text snapshot
2. screen | filter-script | save text snapshot
3. screen | vim = ability to copy/save anything
4. screen | vim (to manually filter something) | save/run a program with arguments
5. screen | linkify script | browser :smiley:

...etc. This is the greatest thing since sliced bread!

### The Bad
#### delkey patch
Incompatible with neovim. Bye felicia!

#### solarized patch
Why add a single colorscheme when `colorschemes` adds 10?

#### colorschemes patch
Active colorscheme is not saved between instances or sessions. Annoying! 
Besides, I would rather manage colorschemes using `Xresources` anyway. That way
active colorscheme is available to other programs that also use Xresources.

#### keyboard_select patch
Very limited vim emulation. Why not just use vim directly? Very easy to do using
`externalpipe` to send contents to vim. Viola! Full vim functionality.

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

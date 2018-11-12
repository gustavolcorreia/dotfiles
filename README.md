
# gustavolcorreia's dotfiles
## [Tmux](https://github.com/tmux/tmux)
* __Important:__ *The most part of the settings present here I copied from this [repo](https://github.com/samoshkin/tmux-config)*
* __Shortcut__

Tmux Key   | Description
:---------------:|:------------------
Ctrl + a|Tmux __<prefix\>__.
__<prefix\>__  Ctrl + e|Open __*\~/.tmux.conf file*__ file in your __*$EDITOR*__ and reload tmux configuration from __*\~/.tmux.conf file*__ .
__<prefix\>__  Ctrl + r|Reload tmux configuration from __*~/.tmux.conf file*__.
__<prefix\>__  Ctrl + h|Toggle status bar visibility. 
__<prefix\>__ c|Create new window.
__<prefix\>__  r|Rename current window.
__<prefix\>__  R|Rename current session.
__<prefix\>__  -|Split new pane horizontally.
__<prefix\>__  \|Split new pane vertically.
__<prefix\>__  <|Moves the window position to the left.
__<prefix\>__  >|Moves the window position to the right.
Alt + ←|Select pane on the left.
Alt + →|Select pane on the right.
Alt + ↑|Select pane on the top.
Alt + ↓|Select pane on the bottom.
__<prefix\>__  Ctrl  + ←|Resize pane to the left.
__<prefix\>__  Ctrl  + →|Resize pane to the right.
__<prefix\>__  Ctrl  + ↑|Resize pane to the top.
__<prefix\>__  Ctrl  + ↓|Resize pane to the bottom.
__<prefix\>__  Tab| Switch to most recently used window.
__<prefix\>__  L|Link window from another session by entering target session and window reference.
__<prefix\>__ \\|Swap panes back and forth with 1st pane. When in main-horizontal or main-vertical layout, the main panel is always at index 1. This keybinding let you swap secondary pane with main one, and do the opposite.
__<prefix\>__  Ctrl + o|Swap current active pane with next one.
__<prefix\>__ +|Toggle zoom for current pane.
__<prefix\>__  x|Kill current pane.
__<prefix\>__  X|Kill current window.
__<prefix\>__ Ctrl + x|Kill other windows but current one (with confirmation).
__<prefix\>__  Ctrl + Q|Kill current session (with confirmation).
__<prefix\>__ d|Detach from session.
__<prefix\>__ D|Detach other clients except current one from session.
__<prefix\>__ s|Save all tmux session([tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)).
__<prefix\>__ S|Restore all tmux session([tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)).
__prefix__ + F12|Switch off all key binding and prefix hanling in current window. See "Nested sessions" paragraph for more info.

* __Plugins__
> * __Official tmux plugins__
>  * [x] [tpm](https://github.com/tmux-plugins/tpm) - tmux Plugin Manager
>  * [x] [tmux-open](https://github.com/tmux-plugins/tmux-open) - plugin for opening highlighted selection directly from tmux
>  * [x] [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight) - plugin that highlights when you press tmux prefix key
>  * [x] [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) - tmux environment will be saved at the interval of 15 minutes
>  * [x] [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) - plugin goes to great lengths to save and restore all the details from your tmux
>  * [x] [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) - plugin that enhances tmux search
>  * [x] [tmux-yank](https://github.com/tmux-plugins/tmux-yank) -  plugin for copying to system clipboard
> * __Community plugins__
>  * [x] [tmuxinator](https://github.com/tmuxinator/tmuxinator) - manage complex tmux sessions easily
 
* __Here are some sites I used to create [my .tmux.conf](https://github.com/gustavolcorreia/dotfiles/.tmux.conf)__
> * [tmux in practice: local and nested remote tmux sessions](https://medium.freecodecamp.org/tmux-in-practice-local-and-nested-remote-tmux-sessions-4f7ba5db8795) - by Alexey Samoshkin
> * [tmux in practice: iTerm2 and tmux](https://medium.freecodecamp.org/tmux-in-practice-iterm2-and-tmux-integration-7fb0991c6c01) - by Alexey Samoshkin
> * [tmux in practice: the scrollback buffer](https://medium.freecodecamp.org/tmux-in-practice-scrollback-buffer-47d5ffa71c93) - by Alexey Samoshkin
> * [tmux in practice: integration with the system clipboard](https://medium.freecodecamp.org/tmux-in-practice-integration-with-system-clipboard-bcd72c62ff7b) - by Alexey Samoshkin
> * [tmux in practice: copy text from remote session using SSH remote tunnel and systemd service](https://hackernoon.com/tmux-in-practice-copy-text-from-remote-session-using-ssh-remote-tunnel-and-systemd-service-dd3c51bca1fa) - by Alexey Samoshkin
> * [samoshkin/tmux-config](https://github.com/samoshkin/tmux-config) - by Alexey Samoshkin
> * [tmux](https://github.com/tmux/tmux)
> * [Using Tmux Remotely Within a Local Tmux Session](https://simplyian.com/2014/03/29/using-tmux-remotely-within-a-local-tmux-session/)
> * [Nested tmux](http://stahlke.org/dan/tmux-nested/) by Dan Stahlke
> * [Openbsd tmux Man(1)](https://man.openbsd.org/man1/tmux.1#KEY_BINDINGS)
> * [netj/dotfiles](https://github.com/netj/dotfiles) by netj
> * [Practical Tmux](https://mutelight.org/practical-tmux) by Brandur
> * [rothgar/awesome-tmux](https://github.com/rothgar/awesome-tmux) by rothgar
> * [Tmux and Vim - even better together](https://blog.bugsnag.com/tmux-and-vim/) by Keegan Lowenstein

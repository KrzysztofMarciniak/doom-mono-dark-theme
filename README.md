# doom-mono-dark-theme
![theme.png](theme.png)
[doom emacs faq.org](https://github.com/doomemacs/doomemacs/blob/master/docs/faq.org#how-do-i-change-the-theme)
``` shell
cd ~ ;
git clone https://github.com/KrzysztofMarciniak/doom-mono-dark-theme ;
CONFIG="${DOOMDIR:-$HOME/.config/doom}/config.el" ;
nano "$CONFIG" ;
```
`$DOOMDIR/config.el:`
``` emacs-lisp
(add-to-list 'custom-theme-load-path "~/doom-mono-dark-theme")
(setq doom-theme 'doom-mono-dark)
```

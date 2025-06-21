;;; doom-mono-dark-theme.el -*- lexical-binding: t; no-byte-compile: t; -*-
(require 'doom-themes)

(def-doom-theme doom-mono-dark
  "A minimalist dark Doom theme."

  ;; name        default   256       16
  ((bg         '("#000000" nil       nil))
   (bg-alt     '("#111111" nil       nil))
   (base0      '("#FFFFFF" "white"   "white"))
   (base1      '("#EEEEEE" "brightwhite" "brightwhite"))
   (base2      '("#DDDDDD" "brightwhite" "brightwhite"))
   (base3      '("#CCCCCC" "brightwhite" "brightwhite"))
   (base4      '("#BBBBBB" "brightwhite" "brightwhite"))
   (base5      '("#AAAAAA" "brightwhite" "brightwhite"))
   (base6      '("#999999" "brightwhite" "brightwhite"))
   (base7      '("#888888" "brightwhite" "brightwhite"))
   (base8      '("#777777" "brightwhite" "brightwhite"))

   (fg         '("#FFFFFF" "white"   "white"))
   (fg-alt     '("#DDDDDD" "brightwhite" "brightwhite"))

   (grey       base5)
   (red        '("#FF5555" "red" "red"))
   (orange     base0)
   (green      base0)
   (teal       base0)
   (yellow     base0)
   (blue       base0)
   (dark-blue  base1)
   (magenta    base0)
   (violet     base0)
   (cyan       base0)
   (dark-cyan  base1)

   ;; UI
   (highlight      '("#333333" "brightblack" "brightblack"))
   (vertical-bar   base2)
   (selection      '("#444444" "gray" "gray"))
   (builtin        fg)
   (comments       base6)
   (doc-comments   base6)
   (constants      fg)
   (functions      fg)
   (keywords       base1)
   (methods        fg)
   (operators      fg)
   (type           fg)
   (strings        base3)
   (variables      fg)
   (numbers        fg)
   (region         selection)
   (error          red)
   (warning        base4)
   (success        base3)
   (vc-modified    grey)
   (vc-added       grey)
   (vc-deleted     base2)

   ;; Modeline
   (-modeline-pad (when doom-mono-dark-padded-modeline
                    (if (integerp doom-mono-dark-padded-modeline)
                        doom-mono-dark-padded-modeline
                      4)))
   (modeline-fg     fg)
   (modeline-fg-alt base5)
   (modeline-bg     base7)
   (modeline-bg-l   base6)
   (modeline-bg-inactive   base5)
   (modeline-bg-inactive-l base4))

  ;; --- Faces ---
  (((font-lock-comment-face &override) :slant 'italic)
   ((line-number &override) :foreground base6 :background bg)
   ((line-number-current-line &override) :foreground fg :background bg-alt)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground fg :weight 'bold)

   (region :background selection)
   (cursor :background fg)
   (fringe :background bg-alt)
   (vertical-border :foreground vertical-bar)

   ;; Highlighting
   (highlight :background highlight)
   (hl-line :background highlight)
   (lazy-highlight :background highlight :weight 'bold)

   ;; Syntax
   (font-lock-builtin-face :foreground fg)
   (font-lock-comment-face :foreground comments)
   (font-lock-constant-face :foreground fg)
   (font-lock-function-name-face :foreground fg)
   (font-lock-keyword-face :foreground keywords :weight 'bold)
   (font-lock-string-face :foreground strings)
   (font-lock-type-face :foreground fg)
   (font-lock-variable-name-face :foreground fg)
   (font-lock-warning-face :foreground red :weight 'bold)))

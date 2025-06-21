;;; doom-mono-dark-theme.el -*- lexical-binding: t; no-byte-compile: t; -*-

(require 'doom-themes)

(defgroup doom-mono-dark-theme nil
  "Options for the `doom-mono-dark' theme."
  :group 'doom-themes)

(defcustom doom-mono-dark-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds padding to the mode-line.
Can be an integer for exact padding."
  :group 'doom-mono-dark-theme
  :type '(choice integer boolean))

(def-doom-theme doom-mono-dark
  "A minimalist black & white Doom theme with red errors and yellow warnings."

  ;; name       default    256       16
  ((bg         '("#000000" "black"   "black"))
   (fg         '("#FFFFFF" "white"   "white"))

   (bg-alt     '("#111111" "black"   "black"))
   (fg-alt     '("#AAAAAA" "grey"    "grey"))

   (base0      '("#000000" "black"   "black"))
   (base1      '("#1A1A1A" "black"   "black"))
   (base2      '("#333333" "black"   "black"))
   (base3      '("#4D4D4D" "grey"    "grey"))
   (base4      '("#666666" "grey"    "grey"))
   (base5      '("#808080" "grey"    "grey"))
   (base6      '("#999999" "grey"    "grey"))
   (base7      '("#B3B3B3" "grey"    "grey"))
   (base8      '("#CCCCCC" "grey"    "grey"))

   (grey       base4)
   (red        '("#FF0000" "red"     "red")) 
   (orange     '("#FFAA00" "brightred" "yellow"))
   (yellow     '("#FFFF00" "yellow"  "yellow")) 
   (green      '("#FFFFFF" "white"   "white"))   
   (teal       '("#FFFFFF" "white"   "white"))   
   (blue       '("#FFFFFF" "white"   "white"))  
   (dark-blue  '("#FFFFFF" "white"   "white"))  
   (magenta    '("#FFFFFF" "white"   "white"))  
   (violet     '("#FFFFFF" "white"   "white")) 
   (cyan       '("#FFFFFF" "white"   "white"))   
   (dark-cyan  '("#FFFFFF" "white"   "white"))   

   (highlight      fg)
   (vertical-bar   base2)
   (selection      base4)
   (builtin        fg)
   (comments       base5)
   (doc-comments   base6)
   (constants      fg)
   (functions      fg)
   (keywords       fg)
   (methods        fg)
   (operators      fg)
   (type           fg)
   (strings        fg)
   (variables      fg)
   (numbers        fg)
   (region         base3)
   (error          red)
   (warning        yellow)
   (success        fg)
   (vc-modified    orange)
   (vc-added       fg)
   (vc-deleted     red)

   (modeline-fg          fg)
   (modeline-fg-alt      base6)
   (modeline-bg          (doom-darken bg 0.3))
   (modeline-bg-alt      (doom-darken bg 0.4))
   (modeline-bg-inactive base2)
   (modeline-bg-inactive-alt base3)

   (-modeline-pad
    (when doom-mono-dark-padded-modeline
      (if (integerp doom-mono-dark-padded-modeline)
          doom-mono-dark-padded-modeline
        4))))

  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override) :foreground base5)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground fg)

   (region :background base4)
   (highlight :foreground fg)
   (error :foreground red :weight 'bold)
   (warning :foreground yellow :weight 'bold)
   (success :foreground fg :weight 'bold)
   (fringe :background bg)
   (vertical-border :foreground base2)
   (cursor :background fg)
   (font-lock-comment-face :foreground base5 :slant 'italic)
   (font-lock-doc-face :foreground base6 :slant 'italic)
   (font-lock-string-face :foreground fg)
   (font-lock-keyword-face :foreground fg :weight 'bold)
   (font-lock-constant-face :foreground fg)
   (font-lock-function-name-face :foreground fg :weight 'bold)
   (font-lock-variable-name-face :foreground fg)
   (font-lock-builtin-face :foreground fg)
   (font-lock-type-face :foreground fg)
   (isearch :background base3 :foreground fg :weight 'bold)
   (lazy-highlight :background base2 :foreground fg)
   (doom-modeline-bar :background fg)
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground fg :weight 'bold)))
;;; doom-mono-dark-theme.el ends here

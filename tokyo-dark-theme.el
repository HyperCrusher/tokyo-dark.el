(deftheme tokyo-dark)

(defgroup tokyo-dark nil
  "Tokyo-dark Theme Options"
  :group 'faces)

;; Settings
(defcustom tokyo-dark-transparent-background nil
  "If non-nil, background to editing windows will be transparent"
  :group 'tokyo-dark
  :type 'boolean)

(defcustom tokyo-dark-transparency 97
  "If 'tokyo-dark-transparent-background' is non nil then this number (1-100) is how opaque the window is (may require restart)"
  :group 'tokyo-dark
  :type 'integer)

(defcustom tokyo-dark-brighter-comments nil
  "If non-nil, comments will be highlighted in a more vivid color."
  :group 'tokyo-dark
  :type 'boolean)

(defcustom tokyo-dark-italic-comments t
  "If non-nil, comments will be italic"
  :group 'tokyo-dark
  :type 'boolean)

(set-frame-parameter nil 'alpha-background tokyo-dark-transparency)
(add-to-list 'default-frame-alist '(alpha-background . tokyo-dark-transparency))

(let ((red "#EE6D85")
      (green "#95C561")
      (orange "#D7A65F")
      (yellow "#D7D75F")
      (blue "#7199EE")
      (light-blue "#7DCFFF")
      (purple "#A485DD")
      (gray "#787C99")
      (black "#06080A")
      (search "#4A507D")
      (fg "#A0A8CD")
      (fg-mute "#616678")
      (bg0 "#11121D")
      (bg1 "#1A1B2A")
      (bg2 "#212234")
      (bg3 "#353945")
      (bg4 "#4A5057")
      (bg5 "#282C34"))

  (custom-theme-set-faces 'tokyo-dark
                          ;; Base
                          `(cursor ((t (:background ,fg :foreground ,bg0))))
                          `(default ((t (:background ,bg1 :foreground ,fg))))
                          `(default-italic ((t (:slant italic))))
                          `(italic ((t (:slant italic))))
                          `(bold ((t (:weight bold))))
                          `(bold-italic ((t (:weight bold :slant italic))))
                          `(hl-todo ((t (:foreground ,bg0 :background ,blue))))
                          `(error ((t (:foreground ,red))))
                          `(ffap ((t (:inherit match))))
                          `(fringe ((t (:background ,bg1 ))))
                          `(header-line ((t (:inherit mode-line))))
                          `(help-key-binding ((t (:background ,bg3 :foreground ,light-blue :box (:line-width (-1 . -1)))) :color ,bg4 :style nil))
                          `(highlight ((t (:foreground ,fg :background ,bg3))))
                          `(hl-line ((t (:background ,bg2))))
                          `(info-menu-star ((t (:foreground ,red))))
                          `(info-quoted-name ((t (:foreground ,orange))))
                          `(info-string ((t (:foreground ,light-blue))))
                          `(lazy-highlight ((t (:foreground ,fg :background ,search))))
                          `(link ((t (:foreground ,purple :underline t))))
                          `(link-unvisited ((t (:foreground ,purple :underline t))))
                          `(line-number ((t (:inherit default :foreground ,bg3 :background ,bg1))))
                          `(line-number-current-line ((t (:inherit line-number :foreground ,fg :weight bold))))
                          `(match ((t (:background ,red :foreground ,bg0))))
                          `(menu ((t (:background ,bg2 :inverse-video nil :foreground ,fg))))
                          `(minibuffer-prompt ((t (:weight normal :foreground ,fg :background ,bg0))))
                          `(mode-line ((t (:background ,bg0 nil :foreground ,fg))))
                          `(mode-line-inactive ((t (:background ,bg0 :inverse-video nil :foreground ,bg4))))
                          `(read-multiple-choice-face ((t (:inherit completions-first-difference))))                        ;;
                          `(region ((t (:background ,bg3 :extend t :weight bold))))
                          `(shadow ((t (:foreground ,fg-mute))))
                          `(success ((t (:foreground ,green))))
                          `(warning ((t (:foreground ,orange))))
                          `(tooltip ((t (:foreground ,fg :background ,bg0))))
                          `(trailing-whitespace ((t (:inherit warning))))
                          `(window-divider ((t (:foreground ,bg0))))
                          `(vertical-border ((t (:foreground ,bg0))))



                          ;; Fontlock / Syntax
                          `(font-lock-bracket-face ((t (:foreground ,gray))))
                          `(font-lock-builtin-face ((t (:foreground ,red))))
                          `(font-lock-comment-face ((t (:slant ,(if tokyo-dark-italic-comments 'italic 'normal)
                                                               :foreground ,(if tokyo-dark-brighter-comments orange fg-mute)))))
                          `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
                          `(font-lock-constant-face ((t (:foreground ,orange))))
                          `(font-lock-delimiter-face ((t (:foreground ,red))))
                          `(font-lock-doc-face ((t (:inherit font-lock-comment-face))))
                          `(font-lock-escape-face ((t (:foreground ,red))))
                          `(font-lock-function-call-face ((t (:foreground ,blue))))
                          `(font-lock-function-name-face ((t (:foreground ,blue))))
                          `(font-lock-keyword-face ((t (:foreground ,purple))))
                          `(font-lock-negation-char-face ((t (:foreground ,light-blue))))
                          `(font-lock-number-face ((t (:foreground ,orange))))
                          `(font-lock-operator-face ((t (:foreground ,light-blue))))
                          `(font-lock-preprocessor-face ((t (:foreground ,orange))))
                          `(font-lock-property-name-face ((t (:foreground ,blue))))
                          `(font-lock-reference-face ((t (:inherit font-lock-constant-face))))
                          `(font-lock-regexp-grouping-backslash ((t (:foreground ,red))))
                          `(font-lock-regexp-grouping-construct ((t (:foreground ,red))))
                          `(font-lock-string-face ((t (:foreground ,green))))
                          `(font-lock-type-face ((t (:foreground ,blue))))
                          `(font-lock-variable-name-face ((t (:foreground ,orange))))
                          `(font-lock-variable-use-face ((t (:foreground ,orange))))
                          `(font-lock-warning-face ((t (:inherit warning))))

                           ;; ansi-color (emacs >= 28.1)
                          `(ansi-color-black ((t (:foreground ,black))))
                          `(ansi-color-red ((t (:foreground ,red))))
                          `(ansi-color-yellow ((t (:foreground ,orange))))
                          `(ansi-color-green ((t (:foreground ,green))))
                          `(ansi-color-blue ((t (:foreground ,blue))))
                          `(ansi-color-magenta ((t (:foreground ,purple))))
                          `(ansi-color-cyan ((t (:foreground ,light-blue))))
                          `(ansi-color-white ((t (:foreground ,gray))))
                          `(ansi-color-bright-black ((t (:foreground ,black))))
                          `(ansi-color-bright-red ((t (:foreground ,red))))
                          `(ansi-color-bright-yellow ((t (:foreground ,orange))))
                          `(ansi-color-bright-green ((t (:foreground ,green))))
                          `(ansi-color-bright-blue ((t (:foreground ,blue))))
                          `(ansi-color-bright-magenta ((t (:foreground ,purple))))
                          `(ansi-color-bright-cyan ((t (:foreground ,light-blue))))
                          `(ansi-color-bright-white ((t (:foreground ,gray))))

                          ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'tokyo-dark)

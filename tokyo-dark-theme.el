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

(let ((red "#EE6D85")
      (green "#EE6D85")
      (orange "#D7A65F")
      (blue "#7199EE")
      (light-blue "#7DCFFF")
      (purple "#A485DD")
      (gray "#787C99")
      (black "#06080A")
      (fg "#A0A8CD")
      (bg0 "#11121D")
      (bg1 "#1A1B2A")
      (bg2 "#212234")
      (bg3 "#353945")
      (bg4 "#4A5057")
      (bg5 "#282C34"))

 (custom-theme-set-faces 'tokyo-dark
  `(default ((t (:background ,bg0 :foreground ,fg))))
  `(italic ((t (:slant italic))))
  `(bold ((t (:weight bold))))
  `(bold-italic ((t (:weight bold :slant italic))))

  `(highlight ((t (:background ,bg5 :overline nil))))
  `(region ((t (:background ,bg5))))
  `(fringe ((t (:background ,bg0))))
  `(button ((t (:inherit default :foreground ,bg0 :background 'blue))))
  `(escape-glyph ((t (:foreground ,red))))

  `(link ((t (:underline (:color ,blue :style line) :foreground ,blue))))
  `(link-visited ((t (:inherit link :foreground ,blue :underline (:color ,blue :style line)))))

  `(cursor ((t (:background ,cursor :foreground ,bg0))))

  ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'tokyo-dark)

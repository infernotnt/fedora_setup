; idk, put before "add-to-list"
(require 'package)

; idk
(setq package-enable-at-startup nil)

; add melpa to package repository
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

; idk, put after "add-to-list"
(package-initialize)
;=========================================================================================================

; install package "use-package", it makes installing other packages easier
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; Load the actual config file, open emacs even if the file can't be found
(when (file-readable-p "~/.config/emacs/config.org")
  (org-babel-load-file (expand-file-name "~/.config/emacs/config.org")))

;============================================================================================================================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#01323d" "#ec423a" "#93a61a" "#c49619" "#3c98e0" "#e2468f" "#3cafa5" "#60767e"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#3cafa5")
 '(cua-overwrite-cursor-color "#c49619")
 '(cua-read-only-cursor-color "#93a61a")
 '(custom-enabled-themes '(solarized-dark))
 '(custom-safe-themes
   '("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" default))
 '(fci-rule-color "#01323d")
 '(highlight-changes-colors '("#e2468f" "#7a7ed2"))
 '(highlight-symbol-colors
   '("#3c6f408d329d" "#0c4a45f64ce3" "#486e33913532" "#1fac3bea568d" "#2ec943ac3324" "#449935a7314d" "#0b04411b5986"))
 '(highlight-symbol-foreground-color "#9eacac")
 '(highlight-tail-colors
   '(("#01323d" . 0)
     ("#687f00" . 20)
     ("#008981" . 30)
     ("#0069b0" . 50)
     ("#936d00" . 60)
     ("#a72e01" . 70)
     ("#a81761" . 85)
     ("#01323d" . 100)))
 '(hl-bg-colors
   '("#936d00" "#a72e01" "#ae1212" "#a81761" "#3548a2" "#0069b0" "#008981" "#687f00"))
 '(hl-fg-colors
   '("#002732" "#002732" "#002732" "#002732" "#002732" "#002732" "#002732" "#002732"))
 '(hl-paren-colors '("#3cafa5" "#c49619" "#3c98e0" "#7a7ed2" "#93a61a"))
 '(lsp-ui-doc-border "#9eacac")
 '(nrepl-message-colors
   '("#ec423a" "#db5823" "#c49619" "#687f00" "#c3d255" "#0069b0" "#3cafa5" "#e2468f" "#7a7ed2"))
 '(package-selected-packages
   '(evil-org diminish spaceline company dashboard rainbow-delimiters switch-window rainbow-mode beacon evil-surround evil-goggles evil-expat evil-visualstar evil-replace-with-register evil-exchange evil-commentary evil-lion evil-collection which-key use-package solarized-theme evil command-log-mode))
 '(pos-tip-background-color "#01323d")
 '(pos-tip-foreground-color "#9eacac")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#93a61a" "#01323d" 0.2))
 '(term-default-bg-color "#002732")
 '(term-default-fg-color "#8d9fa1")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ec423a")
     (40 . "#dace73be2daa")
     (60 . "#d060861a2512")
     (80 . "#c49619")
     (100 . "#b55b9c82193e")
     (120 . "#ad589f3e1963")
     (140 . "#a513a1d61994")
     (160 . "#9c81a44d19d1")
     (180 . "#93a61a")
     (200 . "#84b7a96352b1")
     (220 . "#7a4daad96863")
     (240 . "#6cbbac617d20")
     (260 . "#5a04adfd9175")
     (280 . "#3cafa5")
     (300 . "#41c4a690bd74")
     (320 . "#41d4a1f2c946")
     (340 . "#40129d4ad514")
     (360 . "#3c98e0")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002732" "#01323d" "#ae1212" "#ec423a" "#687f00" "#93a61a" "#936d00" "#c49619" "#0069b0" "#3c98e0" "#a81761" "#e2468f" "#008981" "#3cafa5" "#8d9fa1" "#60767e"))
 '(xterm-color-names
   ["#01323d" "#ec423a" "#93a61a" "#c49619" "#3c98e0" "#e2468f" "#3cafa5" "#faf3e0"])
 '(xterm-color-names-bright
   ["#002732" "#db5823" "#62787f" "#60767e" "#8d9fa1" "#7a7ed2" "#9eacac" "#ffffee"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-goggles-change-face ((t (:inherit diff-removed))))
 '(evil-goggles-delete-face ((t (:inherit diff-removed))))
 '(evil-goggles-paste-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
 '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
 '(evil-goggles-yank-face ((t (:inherit diff-changed)))))

; disable starting screen
(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1) ; Disable the toolbar
;(tooltip-mode -1) ; Disable tooltips
(set-fringe-mode 10) ; Give some breathing room
(menu-bar-mode -1) ; Disable menu bar

;(setq visible-bell t) ; Set up the visible bell

; Theme  aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
(load-theme 'solarized-dark t) ; Requires install

; idk, put before "add-to-list"
(require 'package)

; idk
(setq package-enable-at-startup nil)

; add melpa to package repository
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

; idk, put after "add-to-list"
(package-initialize)

; install package "use-package", it makes installing other packages easier
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
 
; install which key
(use-package which-key
  :ensure t
  :init
  (which-key-mode))


(use-package evil
  :ensure t
  ;:defer .1 ;; don't block emacs when starting, load evil immediately after startup
  :init
  :config
  (evil-mode)
  (message "Loading evil-mode...done"))

(defvar my-term-shell "/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

; Changes the "yes or no" promtps to "y or n"
(defalias 'yes-or-no-p 'y-or-n-p)

; TODO: global-set-key, vidi zasto ne radi, ova sama komanda i nije toliko bitna
;(global-set-key (kbd "<C-return>") 'ansi-term)
(global-set-key (kbd "<C-return>") 'eval-buffer)

; disable autosave and automatic creation of backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

; Makes scrolling sane
(setq scroll-conservatively 100)

; Try typing lambda (not in a comment)
;(global-prettify-symbols-mode t)

; Highlights current line
;(global-hl-line-mode t)

; Package that shows your cursor position on new buffer
(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))


; Indentation (TODO: pogledaj sve ovo, uzeto iz witchmacs)
;(setq-default tab-width 4)
;(setq-default standard-indent 4)
;(setq c-basic-offset tab-width)
;(setq-default electric-indent-inhibit t)
;(setq-default indent-tabs-mode t)
;(setq backward-delete-char-untabify-method 'nil)

;TODO: idk
;(global-prettify-symbols-mode t)


; Treat Wrapped line scrolling as single lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

; Stop cursor blinking
(blink-cursor-mode 0)

; (TODO: not working, also don't know if i need everything(for things like using caps for escape AND ctrl)) esc quits pretty much anything (like pending prompts in the minibuffer)
;(define-key evil-normal-state-map [escape] 'keyboard-quit)
;(define-key evil-visual-state-map [escape] 'keyboard-quit)
;(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; ORG MODE
;; auto-indent an org-mode file
;(add-hook 'org-mode-hook
;(lambda()
;(Local-set-key (kbd "C-c C-c") 'org-table-align)
;(local-set-key (kbd "C-c C-f") 'org-table-calc-current-TBLFM)
;(org-indent-mode t)))
;============================================================================================================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(beacon evil-surround evil-goggles evil-expat evil-visualstar evil-replace-with-register evil-exchange evil-commentary evil-lion evil-collection which-key use-package solarized-theme evil command-log-mode)))
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

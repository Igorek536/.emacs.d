;;; package -- interface.el
;;; Commentary:

;;; PowerEmacs interface module.
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'interface)

;;; Theme:

(use-package kaolin-themes
  :config
  (set-face-background 'default "black")
  (load-theme 'kaolin-bubblegum t))

;;; Line numbers:

(use-package nlinum
  :config
  (face-spec-set 'nlinum-current-line
                 '((t :inherit linum
                      :weight bold
                      :background "white"
                      :foreground "black")))
  (set-face-background 'linum "black")
  (setq nlinum-highlight-current-line t)
  (global-nlinum-mode 1))

;;; Sidebar:

(use-package dired-sidebar
  :config
  (if (display-graphic-p)
      (setq dired-sidebar-theme 'icons)
    (setq dired-sidebar-theme 'nerd))
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-width 20))

;;; Hightlighting:

(use-package paren
  :config
  (setq show-paren-style 'mixed)
  (setq show-paren-delay 0)
  (set-face-background 'show-paren-match "SeaGreen3")
  (set-face-foreground 'show-paren-match "black")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
  (show-paren-mode t))

(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package hl-line
  :config
  (set-face-background 'hl-line "gray7")
  (global-hl-line-mode 1))

(use-package winum
  :init
  (setq winum-auto-setup-mode-line nil)
  :config
  (winum-mode))

;;; Helpers:

(use-package which-key
  :config
  (setq which-key-paging-prefixes '("C-x"))
  (which-key-setup-side-window-bottom)
  (which-key-mode))

;;; Search:

(use-package anzu
  :config
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode +1))

;;; Indent:

(setq-default tab-width 4)
(setq-default tab-always-indent nil)
(progn (setq-default indent-tabs-mode nil))

;;; Parents:

(electric-pair-mode 1)
(electric-indent-mode -1)
(delete-selection-mode t)

;;; Helm:

(use-package helm-ag)

(use-package helm
  :delight
  :config
  (require 'helm-config)
  (setq helm-split-window-inside-p t
        helm-split-window-default-side 'below
        helm-input-idle-delay 0.01)
  (helm-mode 1))

(use-package helm-projectile)

(use-package helm-swoop)

(use-package helm-company)

(use-package helm-flyspell)

(use-package swiper-helm)

;;; interface.el ends here

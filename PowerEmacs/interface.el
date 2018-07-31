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

(use-package display-line-numbers
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode)
  (text-mode . display-line-numbers-mode)
  :config
  (face-spec-set 'line-number-current-line
                 '((t :inherit line-number
                      :weight bold
                      :background "white"
                      :foreground "black")))
  (set-face-background 'line-number "black"))

;;; Sidebar:

(use-package dired-sidebar
  :config
  (if (display-graphic-p)
      (setq dired-sidebar-theme 'icons)
    (setq dired-sidebar-theme 'nerd))
  (setq dired-sidebar-use-term-integration t
        dired-sidebar-width 20))

;;; Diminish:

(use-package diminish)

;;; Hightlighting:

(use-package paren
  :config
  (setq show-paren-style 'mixed
        show-paren-delay 0)
  (set-face-background 'show-paren-match "SeaGreen3")
  (set-face-foreground 'show-paren-match "black")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
  (show-paren-mode t))

(use-package smartparens
  :hook
  (prog-mode . smartparens-mode)
  :config
  (require 'smartparens-config))

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

(use-package diff-hl
  :hook
  (dired-mode . diff-hl-dired-mode)
  :config
  (global-diff-hl-mode 1))

;;; Helpers:

(use-package which-key
  :diminish which-key-mode
  :config
  (setq which-key-paging-prefixes '("C-x"))
  (which-key-setup-side-window-bottom)
  (which-key-mode))

(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;;; Windows:

(use-package zygospore
  :bind
  ("C-x 1" . zygospore-toggle-delete-other-windows))

;;; Search:

(use-package anzu
  :diminish anzu-mode
  :config
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode +1))

;;; Indent:

(setq-default tab-width 4
              tab-always-indent nil)
(progn (setq-default indent-tabs-mode nil))

;;; Parents:

(electric-pair-mode 1)
(electric-indent-mode -1)
(delete-selection-mode t)

;;; Helm:

(use-package helm-ag)

(use-package helm
  :diminish helm-mode
  :config
  (require 'helm-config)
  (require 'helm-lib)
  (setq helm-split-window-inside-p t
        helm-split-window-default-side 'below
        helm-input-idle-delay 0.01
        helm-split-window-inside-p t
        helm-move-to-line-cycle-in-source t
        helm-autoresize-max-height 50
        helm-autoresize-min-height 30)
  (helm-autoresize-mode 1)
  (helm-mode 1))

(use-package helm-descbinds
  :defer t
  :bind
  (("C-h b" . helm-descbinds)
   ("C-h w" . helm-descbinds)))

(use-package helm-projectile
  :config
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

(use-package helm-swoop)

(use-package helm-company)

(use-package helm-flyspell)

;;; interface.el ends here

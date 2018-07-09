;;; package -- projects.el
;;; Commentary:

;;; PowerEmacs projects module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'projects)

;;; Magit:

(use-package magit)

;;; Projectile:

(use-package projectile)

(use-package helm-projectile
  :config
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

;;; LSP:

(use-package lsp-mode)

(use-package lsp-ui
  :hook
  (lsp-mode . lsp-ui-mode))

;;; Company:

(use-package company
  :hook
  (after-init . global-company-mode)
  :config
  (setq company-show-numbers t))

(use-package company-dict)

(use-package company-shell)

(use-package company-lsp
  :config
  (push 'company-lsp company-backends))

;;; Flycheck:

(use-package flycheck
  :init
  (global-flycheck-mode))

;;; Yasnippet

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets)

;;; projects.el ends here

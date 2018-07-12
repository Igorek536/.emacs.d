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

(use-package lsp-mode
  :diminish lsp-mode)

(use-package lsp-ui
  :hook
  (lsp-mode . lsp-ui-mode))

;;; Company:

(use-package company
  :diminish company-mode
  :hook
  (prog-mode . company-mode)
  :config
  (setq company-idle-delay 0
        company-show-numbers t))

;(use-package company-dict)

;(use-package company-shell)

(use-package company-lsp
  :config
  (push 'company-lsp company-backends))

;;; Flycheck:

(use-package flycheck
  :diminish flycheck-mode
  :hook
  (prog-mode . flycheck-mode))

;;; Yasnippet

(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets)

;;; projects.el ends here

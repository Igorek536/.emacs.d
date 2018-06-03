;;; package -- prog.el
;;; Commentary:

;;; PowerEmacs Prog
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.
;;; This is the main module for supporting programming languages.

;;; Code:

(provide 'prog)

(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs/prog"))

(use-package flycheck
  :init
  (global-flycheck-mode)
  :ensure t)

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :delight
  :ensure t)

(use-package company-dict
  :ensure t)

(use-package company-shell
  :ensure t)

(use-package yasnippet
  :delight
  :config
  (yas-global-mode 1)
  :ensure t)

(use-package yasnippet-snippets
  :delight
  :ensure t)

;;; prog.el ends here

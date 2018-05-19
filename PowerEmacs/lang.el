;;; package -- lang
;;; Commentary:

;;; PowerEmacs Lang
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.
;;; This is the main module for supporting programming languages.

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs/lang"))

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
  :ensure t)

(provide 'lang)
;;; lang.el ends here

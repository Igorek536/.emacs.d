;;; package -- coremodule6-prog.el
;;; Commentary:

;;; PowerEmacs Prog module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.
;;; This is the main module for supporting programming languages.

;;; Code:

(provide 'coremodule6-prog)

(use-package flycheck
  :init
  (global-flycheck-mode)
  :ensure t)

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-show-numbers t)
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

;;; coremodule6-prog.el ends here

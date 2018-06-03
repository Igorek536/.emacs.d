;;; package -- core_completion
;;; Commentary:

;;; PowerEmacs Completion
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'core_completion)

(use-package async
  :ensure t)

(use-package helm-ag
  :ensure t)

(use-package helm
  :delight
  :config
  (require 'helm-config)
  (setq helm-split-window-inside-p t
        helm-split-window-default-side 'below
        helm-input-idle-delay 0.01)
  (helm-mode 1)
  :ensure t)

(use-package helm-projectile
  :ensure t)

(use-package helm-swoop
  :ensure t)

(use-package helm-company
  :ensure t)

(use-package helm-flyspell
  :ensure t)

;;; core_completion.el ends here

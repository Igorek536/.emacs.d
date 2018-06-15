;;; package -- coremodule3-helm

;;; Commentary:
;;; PowerEmacs Helm module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'coremodule3-helm)

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

;;; Keybinds:

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-z") 'helm-select-action)
(global-set-key (kbd "C-:") 'helm-company)
(global-set-key (kbd "C-;") 'helm-flyspell-correct)
(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x v") 'helm-projectile)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x f") 'helm-recentf)
(global-set-key (kbd "C-x c o") 'helm-occur)
(global-set-key (kbd "C-x c p") 'helm-projectile-ag)
(global-set-key (kbd "C-x c k") 'helm-show-kill-ring)
(global-set-key (kbd "C-x c s") 'helm-swoop)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

;;; coremodule3-helm.el ends here

;;; package -- keybinds
;;; Commentary:

;;; PowerEmacs Keybinds
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'keybinds)

; Standart
(global-set-key (kbd "C-x C-b") 'ibuffer)

; Helm
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

; Sidebar
(global-set-key (kbd "C-x C-n") 'dired-sidebar-toggle-sidebar)

; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;;; keybinds.el ends here

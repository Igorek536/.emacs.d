;;; package -- keybindings
;;; Commentary:

;;; PowerEmacs Keybindings
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

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
;(global-set-key (kbd "C-x g c") 'magit-commit)
;(global-set-key (kbd "C-x g p") 'magit-push)
;(global-set-key (kbd "C-x g e") 'magit-ediff-resolve)
;(global-set-key (kbd "C-x g r") 'magit-rebase-interactive)

; Switch-Window
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

(provide 'keybindings)
;;; keybindings.el ends here

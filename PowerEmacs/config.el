;;; package -- config.el
;;; Commentary:

;;; PowerEmacs config module.
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'config)

;;; Frame:

(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-frame-maximized)

;;; Encoding:

(set-charset-priority               'unicode)
(set-terminal-coding-system         'utf-8)
(set-keyboard-coding-system         'utf-8)
(set-selection-coding-system        'utf-8)
(prefer-coding-system               'utf-8)
(setq locale-coding-system          'utf-8
      default-process-coding-system '(utf-8-unix . utf-8-unix))

;;; Backups:

(setq history-length 1000
      backup-inhibited nil
      make-backup-files t
      auto-save-default t
      auto-save-list-file-name
      (concat user-emacs-directory "autosave")
      make-backup-files t
      create-lockfiles nil
      backup-directory-alist
      `((".*" . ,(concat user-emacs-directory "backups")))
      auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "autosave") t)))

;;; Sound:

(setq-default ring-bell-function #'ignore
              visible-bell nil)

;;; Shell:

(setq shell-file-name "/bin/bash")

;;; Scrolling:

(setq scroll-step 1
      scroll-conservatively 1000)

;;; Keybindings:

;; Standart
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c w") 'whitespace-mode)
(global-set-key (kbd "RET") 'newline-and-indent)

;; Sidebar
(global-set-key (kbd "C-x C-n") 'dired-sidebar-toggle-sidebar)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-z") 'helm-select-action)
(global-set-key (kbd "C-:") 'helm-company)
(global-set-key (kbd "C-;") 'helm-flyspell-correct)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x v") 'helm-projectile)
;(global-set-key (kbd "C-x f") 'helm-recentf)
(global-set-key (kbd "C-x c o") 'helm-occur)
(global-set-key (kbd "C-x c p") 'helm-projectile-ag)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x c s") 'helm-swoop)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

;;; config.el ends here

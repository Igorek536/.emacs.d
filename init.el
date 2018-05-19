;;; package -- init
;;; Commentary:

;;; PowerEmacs init
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

;;   _____                                                      ;;
;;  |  __ \                                                     ;;
;;  | |__) |____      _____ _ __                                ;;
;;  |  ___/ _ \ \ /\ / / _ \ '__|___                            ;;
;;  | |  | (_) \ V  V /  __/ |  ____|                           ;;
;;  |_|   \___/ \_/\_/ \___|_| |__   _ __ ___   __ _  ___ ___   ;;
;;                           |  __| | '_ ` _ \ / _` |/ __/ __|  ;;
;;                           | |____| | | | | | (_| | (__\__ \  ;;
;;                           |______|_| |_| |_|\__,_|\___|___/  ;;
;;                                                              ;;
;; For those, who code!                        ... by Igorek536 ;;
;; Use it only in GUI mode!                                     ;;
;;
;; Now supported:
;; - Python
;; - Racket
;; - NASM

;; Warning! You should install icons fonts!
;; Use: M-x -> all-the-icons-install-fonts

(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs"))

(use-package core)
(use-package core_ui)
(use-package core_ui_modeline)
(use-package core_editor)
(use-package core_projects)
(use-package core_completion)
(use-package core_games)

(use-package lang)
(use-package lang_cpp)
(use-package lang_nasm)

(use-package keybindings)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (hl-line-plus winum which-key use-package switch-window spaceline reverse-im pyenv-mode py-autopep8 on-screen multi-term magit ibuffer-sidebar hlinum highlight-leading-spaces helm-swoop helm-projectile helm-flyspell helm-company helm-ag flycheck-pycheckers dired-sidebar delight company-shell company-dict company-anaconda base16-theme anzu all-the-icons-dired))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

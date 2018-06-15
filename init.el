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

;; Warning! You should install icons fonts!
;; Use: M-x -> all-the-icons-install-fonts

(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs"))

(toggle-debug-on-error)

;; Core modules

(require 'coremodule0-core)
(require 'coremodule1-ui)
(require 'coremodule2-editor)
(require 'coremodule3-ivy)
(require 'coremodule4-projects)
(require 'coremodule5-keybinds)
(require 'coremodule6-prog)

;; Other modules

(require 'module-modeline)
(require 'module-splash)
(require 'module-games)
(require 'module-asm)
(require 'module-cpp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here

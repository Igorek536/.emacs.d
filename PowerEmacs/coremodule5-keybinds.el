;;; package -- coremodule5-keybinds
;;; Commentary:

;;; PowerEmacs Keybinds module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'coremodule5-keybinds)

; Standart
(global-set-key (kbd "C-x C-b") 'ibuffer)

; Sidebar
(global-set-key (kbd "C-x C-n") 'dired-sidebar-toggle-sidebar)

; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;;; coremodule5-keybinds.el ends here

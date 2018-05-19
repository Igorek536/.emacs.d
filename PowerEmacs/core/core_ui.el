;;; package -- core_ui
;;; Commentary:

;;; PowerEmacs Ui
;;; Author : Igorek536
;;; Version: 0.2
;;; This module is part of PowerEmacs distribution.

;;; Code:

; Themes included:  (i prefer dark themes)
; - charcoal-black          (charcoal)
; - comidia-theme           (comidia)
; - midnight-theme          (midnight)
; - subdued-theme           (subdued)  (recommended)
; - railscast-theme         (railcast)
; - cyberpunk-theme         (cyberpunk)
;
; Other good themes: (not included)
; - bliss-theme             (bliss)
; - hemisu-theme            (hemisu-dark)
; - base16-theme            (base16-default-dark)
; - kaolin-themes           (kaolin-dark/kaolin-aurora)
; - noctilux-theme          (noctilux)
; - moe-theme               (moe-dark)
; - darkmine-theme          (darkmine)
; - nimbus-theme            (nimbus)
; - reverse-theme           (reverse)  (recommended)

(use-package reverse-theme
  :ensure t
  :config
  (load-theme 'reverse t))

(use-package linum
  :config
  (global-hl-line-mode 1)
  (line-number-mode   t)
  (column-number-mode t)
  (global-linum-mode 1)
  :ensure t)

(use-package hlinum
  :config
  (hlinum-activate)
  :ensure t)

;(use-package on-screen
;  :config
;  (on-screen-global-mode +1)
;  :ensure t)

(use-package winum
  :init
  (setq winum-auto-setup-mode-line nil)
  :config
  (winum-mode)
  :ensure t)

(use-package delight
  :ensure t)

(use-package multi-term
  :config
  (setq multi-term-program "/bin/bash")
  :ensure t)

(use-package switch-window
  :ensure t)

(use-package ibuffer-sidebar
  :ensure t)

(use-package which-key
  :config
  (setq which-key-paging-prefixes '("C-x"))
  (which-key-setup-side-window-right)
  (which-key-mode)
  :delight
  :ensure t)

(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :config
  (if (display-graphic-p)
      (setq dired-sidebar-theme 'icons)
    (setq dired-sidebar-theme 'nerd))
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-width 20))

(defun sidebar-toggle ()
  "Toggle sidebar with folders tree and buffers list."
  (interactive)
  (dired-sidebar-toggle-sidebar)
  (ibuffer-sidebar-toggle-sidebar))

;; Other Settings
; Disable toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)

; Launch maximized
(toggle-frame-maximized)

(provide 'core_ui)
;;; core_ui.el ends here

;;; package -- core_editor
;;; Commentary:

;;; PowerEmacs Editor
;;; Author : Igorek536
;;; Version: 0.2
;;; This module is part of PowerEmacs distribution.

;;; Code:

;(use-package highlight-leading-spaces
;  :ensure t
;  :defer t
;  :init (add-hook 'prog-mode-hook 'highlight-leading-spaces-mode))

(use-package anzu
  :delight
  :config
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode +1)
  :ensure t)

(use-package reverse-im
  :ensure t
  :delight
  :config
  (reverse-im-activate "russian-computer"))

(use-package hl-line-plus)

;; TAB settings
(progn (setq-default indent-tabs-mode nil))

; 4 spaces for indent
(setq-default tab-width 4)

; TAB not always indent
(setq-default tab-always-indent nil)

;; Paren settings

(use-package paren
  :config
  (setq show-paren-style 'mixed)
  (setq show-paren-delay 0)
  (set-face-background 'show-paren-match "SpringGreen3")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
  (show-paren-mode t))


;; Electric and selection settings
(electric-pair-mode    1)             ; Включаем автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-indent-mode -1)             ; Отключаем индентацию  electric-indent-mod'ом (default in Emacs-24.4)
(delete-selection-mode t)

;; CUA settings
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ; Don't tabify after rectangle commands
(transient-mark-mode 1)               ; No region when it is not highlighted
(setq cua-keep-region-after-copy t)   ; Standard Windows behaviour

;; Line hightlight
(set-face-background hl-line-face "gray7")

;; Smooth scrolling
(setq scroll-step 1)
(setq scroll-conservatively 1000)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse t)

(provide 'core_editor)
;;; core_editor.el ends here

;;; package -- module-cpp
;;; Commentary:

;;; PowerEmacs C/C++ module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;; Requirements:
;; - clang
;; - libclang-dev >= 3.3
;; - cmake
;; - global

;;; Code:

(provide 'module-cpp)

(use-package irony
  :config
  (unless (irony--find-server-executable) (call-interactively #'irony-install-server))
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package irony-eldoc
  :hook
  (irony-mode . irony-eldoc))

(use-package company-irony
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package flycheck-irony
  :hook
  (flycheck-mode . flycheck-irony-setup))

(use-package company-irony-c-headers)

(use-package cmake-ide
  :config
  (cmake-ide-setup))

(use-package ggtags)

(use-package helm-gtags
  :config
  (setq helm-gtags-ignore-case t)
  (setq helm-gtags-auto-update t)
  (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
  (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
  (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
  (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
  (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
  (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
  (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
  :hook
  (c-mode . helm-gtags-mode)
  (c++-mode . helm-gtags-mode)
  (asm-mode . helm-gtags-mode))

(use-package function-args
  :config
  (fa-config-default)
  (set-default 'semantic-case-fold t)
  (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)))

;;; module-cpp.el ends here

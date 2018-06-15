;;; package -- module-asm
;;; Commentary:

;;; PowerEmacs ASM module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'module-asm)

(use-package asm-mode
  :config
  (add-hook 'asm-mode-hook (lambda()
                           (setq tab-width 4)
                           (setq indent-tabs-mode t)
                           (setq indent-line-function 'insert-tab))))

;;; module-asm.el ends here

;;; package -- lang_nasm
;;; Commentary:

;;; PowerEmacs NASM(Netwide Assembler) module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(use-package asm-mode
  :config
  (add-hook 'asm-mode-hook (lambda()
                           (setq tab-width 4)
                           (setq indent-tabs-mode t)
                           (setq indent-line-function 'insert-tab)
                           (setq asm-indent-level 4))))

(provide 'lang_nasm)
;;; lang_nasm.el ends here

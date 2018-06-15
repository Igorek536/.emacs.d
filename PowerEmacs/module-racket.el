;;; package -- module-racket
;;; Commentary:

;;; PowerEmacs Racket module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'module-racket)

;; WARNING!
;; You should install racket and DrRacket before use this module!

(use-package racket-mode
  :config
  (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  :ensure t)

;;; module-racket.el ends here

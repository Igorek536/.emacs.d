;;; package -- lang_racket
;;; Commentary:

;;; PowerEmacs Racket support
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

;; WARNING!
;; You should install racket and DrRacket before use this module!

(use-package racket-mode
  :config
  (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  :ensure t)

(provide 'lang_racket)
;;; lang_racket.el ends here

;;; package -- main.el
;;; Commentary:

;;; PowerEmacs main module
;;; Author : Igorek536
;;; Version: 0.1
;;; This is main module of PowerEmacs!

;;; Code:

(provide 'main)

;;; Startup:

(setq load-prefer-newer t
      gc-cons-threshold most-positive-fixnum)

(add-hook 'emacs-startup-hook
          'main/startup-gc)

(defun main/startup-gc ()
  "Set gc on startup."
  (setq gc-cons-threshold 9000000))

;; Defer jit font locking slightly to
;; [try to] improve Emacs performance
(setq-default jit-lock-defer-time nil
              jit-lock-stealth-nice 0.1
              jit-lock-stealth-time 0.2
              jit-lock-stealth-verbose nil)

;;; Packages bootstrap:

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (not package-archive-contents)
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))
(setq use-package-always-ensure t)

;;; Load modules:

(require 'interface)
(require 'projects)
(require 'config)

;;; main.el ends here

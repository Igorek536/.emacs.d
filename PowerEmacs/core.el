;;; package -- core
;;; Commentary:

;;; PowerEmacs Core
;;; Author : Igorek536
;;; Version: 0.3
;;; This module is part of PowerEmacs distribution.

;;; Code:

(setq load-prefer-newer t)

(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook 'startup/set-gc-threshold)
(defun startup/set-gc-threshold ()
  "Reset `gc-cons-threshold' to its default value."
  (setq gc-cons-threshold  9000000))

(setq large-file-warning-threshold 100000000)

; Defer jit font locking slightly to [try to] improve Emacs performance
(setq-default jit-lock-defer-time nil
              jit-lock-stealth-nice 0.1
              jit-lock-stealth-time 0.2
              jit-lock-stealth-verbose nil)

;; use-package bootstrap
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(when (not package-archive-contents) (package-refresh-contents))
(unless (package-installed-p 'use-package) (package-install 'use-package))
(eval-when-compile (require 'use-package))

(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs/_pkg"))
(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs/core"))

; Bug hunter
; To fix emacs init use: bug-hunter-init-file
(use-package bug-hunter
  :ensure t)

; Paradox package menu
(use-package paradox
  :config
  (paradox-enable)
  :ensure t)

;(use-package dired+)

;; Shell config
(setq shell-file-name "/bin/bash")

;; Encoding config
(set-charset-priority               'unicode)
(setq locale-coding-system          'utf-8)
(set-terminal-coding-system         'utf-8)
(set-keyboard-coding-system         'utf-8)
(set-selection-coding-system        'utf-8)
(prefer-coding-system               'utf-8)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; Backups config
(setq history-length                 1000
      backup-inhibited               nil
      make-backup-files              t
      auto-save-default              t
      auto-save-list-file-name       (concat user-emacs-directory "autosave")
      make-backup-files              t
      create-lockfiles               nil
      backup-directory-alist         `((".*" . ,(concat user-emacs-directory "backups")))
      auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "autosave") t)))

;; Sound config
(setq-default ring-bell-function #'ignore
              visible-bell nil)

(defun poweremacs-clean ()
  "Clean all files."
  (interactive)
  (delete-directory (concat user-emacs-directory "eshell") t)
  (delete-directory (concat user-emacs-directory "elpa") t))


(provide 'core)
;;; core.el ends here

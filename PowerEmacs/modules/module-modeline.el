;;; package -- module-modeline
;;; Commentary:

;;; PowerEmacs Modeline module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'module-modeline)

(use-package spaceline
  :config
  (setq-default
   spaceline-byte-compile t
   powerline-height 20
   powerline-default-separator 'wave
   powerline-text-scale-factor 1.05
   spaceline-window-numbers-unicode t
   spaceline-flycheck-bullet "✎ %s"))

(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-emacs-theme)
  (spaceline-helm-mode)
  (setq spaceline-face-func 'spaceline-face-poweremacs)
  (setq spaceline-highlight-face-func 'poweremacs-highlight-face))

(defun spaceline-face-poweremacs (face active)
  "PowerEmacs face function for spaceline.
Args: FACE, ACTIVE."
  (pcase (cons face active)
    ('(face1 . t)   'poweremacs-active1)
    ('(face1 . nil) 'poweremacs-inactive1)
    ('(face2 . t)   'poweremacs-active2)
    ('(face2 . nil) 'poweremacs-inactive2)
    ('(line . t)    'mode-line)
    ('(line . nil)  'mode-line-inactive)
    ('(highlight . t) (funcall spaceline-highlight-face-func))
    ('(highlight . nil) 'powerline-inactive1)
    (_ 'error)))

(defun poweremacs-highlight-face ()
  "PowerEmacs highlight face."
  (cond
   (buffer-read-only 'poweremacs-highlight-face-readonly)
   ((buffer-modified-p) 'poweremacs-highlight-face-modified)
   (t 'poweremacs-highlight-face-default)))

;;; Faces:

(defface poweremacs-inactive1
  '((t (:background "grey11" :inherit mode-line-inactive)))
  "PowerEmacs inactive face 1."
  :group 'spaceline)

(defface poweremacs-inactive2
  '((t (:background "grey20" :inherit mode-line-inactive)))
  "PowerEmacs inactive face 2."
  :group 'spaceline)

(defface poweremacs-active1
  `((t (:background "#121212"
        :foreground "yellow"
        :inherit 'mode-line)))
  "PowerEmacs active face 1."
  :group 'spaceline)

(defface poweremacs-active2
  `((t (:background "#1d1a1c"
        :foreground "snow"
        :inherit 'mode-line)))
  "PowerEmacs active face 1."
  :group 'spaceline)

(defface poweremacs-highlight-face-default
  `((t (:background "SeaGreen3"
        :foreground "#121212"
        :inherit 'mode-line)))
  "PowerEmacs highlight face for spaceline."
  :group 'spaceline)

(defface poweremacs-highlight-face-modified
  `((t (:background "DarkGoldenrod1"
        :foreground "#121212"
        :inherit 'mode-line)))
  "PowerEmacs highlight face for spaceline."
  :group 'spaceline)

(defface poweremacs-highlight-face-readonly
  `((t (:background "DeepSkyBlue1"
        :foreground "#121212"
        :inherit 'mode-line)))
  "PowerEmacs highlight face for spaceline."
  :group 'spaceline)

;;; module-modeline.el ends here

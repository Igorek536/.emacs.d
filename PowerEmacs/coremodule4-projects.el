;;; package -- coremodule4-projects
;;; Commentary:

;;; PowerEmacs Projects
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'coremodule4-projects)

;; Little magit tutorial for nubbies
; - To create a repo, use 'magit-init'
; - To run magit main interface, use 'magit-status' ("C-x g" keybinding)
; - To stage files, open magit interface and press s when the cursor is
;   on the same line with the required file.

(use-package magit
  :ensure t)

(use-package projectile
  :ensure t)

;;; coremodule4-projects.el ends here

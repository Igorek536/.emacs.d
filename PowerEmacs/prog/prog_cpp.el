;;; package -- prog_cpp
;;; Commentary:

;;; PowerEmacs C/C++ support
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;; Requirements:
;; - clang
;; - libclang-dev >= 3.3
;; - cmake

;;; Code:

(provide 'prog_cpp)

(use-package irony
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  :ensure t)

(use-package irony-eldoc
  :ensure t)

(use-package company-irony
  :ensure t)

(use-package company-irony-c-headers
  :ensure t)

(use-package cmake-ide
  :config
  (cmake-ide-setup)
  :ensure t)

;;; prog_cpp.el ends here

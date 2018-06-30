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

;;; Code:

(provide 'module-cpp)

(use-package irony
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package irony-eldoc)

(use-package company-irony)

(use-package company-irony-c-headers)

(use-package cmake-ide
  :config
  (cmake-ide-setup))

;;; module-cpp.el ends here

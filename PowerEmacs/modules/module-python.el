;;; package -- module-python
;;; Commentary:

;;; PowerEmacs Python module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'module-python)

;; WARNING! All required packages should be installed in user mode
;; (pip3 install --user [package])
;;
;; Requirements:
;;  - virtualenv, virtualenvwrapper         (virtualenv)
;;  - autopep8                              (code formatter)
;;  - pyflakes, flake8, pep8                (code checker)
;;
;; Put in your .bashrc:
;; export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
;; source $(which virtualenvwrapper.sh)
;;
;; If not works, put in .profile:
;; if [ -d "$HOME/.local/bin" ] ; then
;;     PATH="$HOME/.local/bin:$PATH"
;; fi
;;
;; And reboot session(or computer :D)

(use-package anaconda-mode)

(use-package company-anaconda)

(use-package flycheck-pycheckers
  :config
  (setq flycheck-pycheckers-checkers '(pyflakes flake8 pep8)))

(use-package py-autopep8)

(use-package virtualenvwrapper
  :config
  (venv-initialize-interactive-shells)
  (venv-initialize-eshell))

(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(defun python/python-mode-hook ()
  "Python module hook."
  (py-autopep8-enable-on-save)
  (anaconda-mode 1)
  (anaconda-eldoc-mode 1))

(add-hook 'python-mode-hook 'python/python-mode-hook)

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))

;;; module-python.el ends here

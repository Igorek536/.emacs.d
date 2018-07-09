;;; package -- module-rust
;;; Commentary:

;;; PowerEmacs Rust module
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'module-rust)

;; Require rust packages: cargo-check, clippy, racer.
;; Install it throught: cargo install [package]
;; Rust src is required: rustup component add rust-src rls-preview rust-analysis

(use-package rust-mode
  :config
  (setq rust-format-on-save t))

(use-package flycheck-rust
  :after rust-mode
  :hook
  (flycheck-mode . flycheck-rust-setup))

(use-package cargo
  :diminish cargo-minor-mode
  :hook
  (rust-mode . cargo-minor-mode))

(use-package racer
  :diminish racer-mode
  :config
  :hook
  (rust-mode . racer-mode)
  (racer-mode . eldoc-mode)
  (racer-mode . company-mode))

(use-package toml-mode)

(use-package lsp-rust
  :after lsp-mode
  :hook
  (rust-mode . lsp-rust-enable)
  :config
  (setq lsp-rust-rls-command '("rustup" "run" "stable" "rls")))

;;; module-rust.el ends here

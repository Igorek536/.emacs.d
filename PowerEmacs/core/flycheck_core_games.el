;;; package -- core_games
;;; Commentary:

;;; PowerEmacs Games
;;; Author : Igorek536
;;; Version: 0.2
;;; This module is part of PowerEmacs distribution.

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "PowerEmacs/_pkg/emacsgames"))

(use-package 5x5)
(use-package animate)
(use-package blackbox)
(use-package bubbles)
(use-package cookie1)
(use-package decipher)
(use-package dissociate)
(use-package doctor)
(use-package dunnet)
(use-package fortune)
(use-package gamegrid)
(use-package gametree)
(use-package gomoku)
(use-package handwrite)
(use-package hanoi)
(use-package life)
(use-package morse)
(use-package mpuz)
(use-package pong)
(use-package snake)
(use-package solitaire)
(use-package spook)
(use-package studly)
(use-package tetris)
(use-package zone)
(use-package autotetris-mode
  :ensure t)

(provide 'core_games) 
;;; core_games.el ends here

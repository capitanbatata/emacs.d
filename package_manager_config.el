;;; package_manager_config.el  --- Package management configuration.
;;;
;;; Author: Damian Nadales
;;;
;;; Commentary:
;;; Configuration related to package management.
;;;
;;; Code:

(require 'package)

(setq
 use-package-always-ensure t
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
		    ("melpa-stable" . "https://stable.melpa.org/packages/")
                    ("melpa" . "http://melpa.org/packages/"))
 )

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

;; Path to my own packages.
(add-to-list 'load-path "~/.emacs.d/elisp/")

(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; Required packages
(use-package ensime
  :commands ensime ensime-mode
  :pin melpa-stable)
(use-package flycheck)
(use-package haskell-mode)
(use-package intero) ;; Too inmature to use right now (24/08/2017)
(use-package projectile)
(use-package haskell-snippets)
(use-package helm-projectile)
(use-package buffer-move)
(use-package indent-tools)
(use-package hindent)
(use-package flycheck-haskell)
(use-package helm-xref)
(use-package markdown-mode)
(use-package mmm-mode)
(use-package color-theme-sanityinc-tomorrow)

;;; package_manager_config.el ends here


;;; init.el --- Emacs configuration file
;;; Author: Damian Nadales
;;;
;;; Commentary:
;;; My Emacs configuration.
;;;
;;; Code:
(provide 'init)

(load "~/.emacs.d/package_manager_config.el")
(load "~/.emacs.d/editor_common_config.el")
(load "~/.emacs.d/helm_config.el")
(load "~/.emacs.d/org_config.el")
(load "~/.emacs.d/windows_management_config.el")
(load "~/.emacs.d/haskell_config.el")
(load "~/.emacs.d/scala_config.el")

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save t)
 '(js-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

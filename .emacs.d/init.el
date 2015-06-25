 ;;;;;;;;
;; sql
;;;;;;;;
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(require 'cl-lib)
(require 'ido)
(ido-mode t)
(require 'shell-completion)
(require 'term)

;;maximize frame on startup
(run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;map C-c d to kill-whole line
(global-set-key "\C-cd" 'kill-whole-line)

;;configure the newline character to be unix style
(set-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(set-default default-buffer-file-coding-system 'utf-8-unix)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("17a4e8ceb0320f07f4087c85ad4a452fc82d8b7b70d16eda8e3f4df138223399" default)))
 '(safe-local-variable-values (quote ((no-byte-compile t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemMenuText" :foreground "bisque" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "outline" :family "Courier New")))))

;;Open bookmark list on startup
(setq inhibit-splash-screen t)
(require 'bookmark)
(bookmark-bmenu-list)
(switch-to-buffer "*Bookmark List*")

;;Open all org files in a properly-indented mode
(setq org-startup-indented t)


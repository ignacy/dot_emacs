;;; Commentary: init -- my emacs configuration

(require 'cl)
(setq debug-on-error nil)
(setq dotfiles-dir "~/.emacs.d")
(setq configuration-files-dir (concat dotfiles-dir "/elisp"))
(add-to-list 'load-path configuration-files-dir)
(setq custom-file (expand-file-name "custom.el" configuration-files-dir))
(load custom-file)
(add-to-list 'custom-theme-load-path (concat dotfiles-dir "/themes/"))
(require 'basic-settings)


;; (if (window-system)
;;     (load-theme 'sidewalk-chalk t))

;; (enable-theme 'ample-flat)
(if (string-equal system-name "MacBook-Pro-Ignacy.local")
    (load-theme 'default-black t)
  (use-package material-theme
    :ensure material-theme
    :init (load-theme 'material t)))


;; (use-package ir-black-theme
;;     :ensure ir-black-theme
;;       :init (load-theme 'ir-black t))


;; ;; cursor
;; (setq cursor-in-non-selected-windows nil)
(blink-cursor-mode t)
(setq blink-cursor-blinks 0)
(set-cursor-color "chartreuse2")
;;(setq-default cursor-type '(bar . 4))


;; red line after 80 characters
;; (add-hook 'after-change-major-mode-hook 'fci-mode)
;; (setq fci-rule-column 80)
;; (setq fci-rule-color "red")

(global-hl-line-mode)

(defun fix-fonts (type)
  " wiegth: 'normal or 'light"
  (interactive)
  (mapc (lambda (face)
          (set-face-attribute face nil :weight type :underline nil))
        (face-list)))
;; (fix-fonts 'normal)

(fringe-mode '(6 . 0))

(use-package helpers)
(use-package keys)

;;;; Customize some packages
(require 'init-file-associations)
;;(require 'init-clojure-mode)
(require 'init-completition)
(require 'init-javascript-settings)
(require 'init-markup-and-style-modes)

(require 'init-projectile)

(require 'init-magit)
(require 'init-ruby-mode)
(require 'init-go-mode)
(require 'init-shell-mode)
(require 'ido-bookmark-jump)
;;(require 'init-org)

(require 'init-flycheck)
;; (require 'init-evil)

(use-package rbenv
  :ensure rbenv
  :init (progn
          ;;(setq rbenv-installation-dir "/usr/local/rbenv")
          (setq rbenv-show-active-ruby-in-modeline nil)
          (global-rbenv-mode)))

;; (use-package color-identifiers-mode
;;   :init
;;   (progn
;;     (add-hook 'after-init-hook 'global-color-identifiers-mode)))


(put 'narrow-to-region 'disabled nil)

;; font setting
;;(set-face-attribute 'default nil :family "CamingoCode" :height 150)
;; (set-face-attribute 'default nil :background "gray17")

;;(set-frame-font "CamingoCode 15")

;;(require 'nssh)
;;(set-frame-font "Source Code Pro 15")
;;(set-frame-font "Monaco 15")
;;(set-frame-font "Inconsolata-g 14")

(if (string-equal system-name "MacBook-Pro-Ignacy.local")
    (set-frame-font "Lucida Grande Mono 16")
  (set-frame-font "Lucida Grande Mono Nrw 16"))

(use-package smart-modeline)

(set-face-attribute hl-line-face nil :underline nil)

(recentf-cleanup) ;; remove old files from recentf list

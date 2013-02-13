(blink-cursor-mode t)

(winner-mode 1)
(windmove-default-keybindings)


(require 'ido)
(ido-mode 'both)

;; Use ido everywhere
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

;; Fix ido-ubiquitous for newer packages
(defmacro ido-ubiquitous-use-new-completing-read (cmd package)
  `(eval-after-load ,package
     '(defadvice ,cmd (around ido-ubiquitous-new activate)
        (let ((ido-ubiquitous-enable-compatibility nil))
          ad-do-it))))



(require 'epa)
(epa-file-enable)
(require 'textmate)
(textmate-mode)
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

(require 'inline-string-rectangle)
(global-set-key (kbd "C-x r t") 'inline-string-rectangle)
(require 'mark-more-like-this)
(global-set-key (kbd "C-<") 'mark-previous-like-this)
(global-set-key (kbd "C->") 'mark-next-like-this)
(global-set-key (kbd "C-M-m") 'mark-more-like-this)
(global-set-key (kbd "C-*") 'mark-all-like-this)


(set-default 'imenu-auto-rescan t)


(setq auto-save-default nil)
(setq initial-scratch-message nil)
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(show-paren-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(transient-mark-mode 1) ;; No region when it is not highlighted
(delete-selection-mode t)
(setq ido-create-new-buffer 'always)
(setq backup-inhibited t)
(setq font-lock-maximum-decoration t)
(display-time-mode -1)
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
            kill-buffer-query-functions))

(setq
 bookmark-default-file "~/.emacs.d/bookmarks" ;; keep my ~/ clean
 bookmark-save-flag 1)                        ;; autosave each change)

(setq x-select-enable-clipboard t)

(setq confirm-nonexistent-file-or-buffer nil)

(global-hl-line-mode 1)
;;(set-face-background 'hl-line "light cyan")
;;(set-face-background 'hl-line "#444")
(set-face-foreground 'highlight nil)
(set-face-foreground 'hl-line nil)
(set-face-attribute hl-line-face nil :overline nil)
(set-face-attribute hl-line-face nil :underline nil)

(setq ibuffer-expert t)
(setq auto-save-default nil)

(setq-default fill-column 100)
;;(set-face-background 'fringe "SteelBlue4")
;;(fringe-mode '(1 . 0))
(set-cursor-color '"#00ff00")

(require 'whitespace)
(setq whitespace-style '(trailing lines lines-tail space-before-tab indentation empty space-after-tab))
(setq-default show-trailing-whitespace t)
(setq-default default-indicate-empty-lines t)
(setq-default whitespace-line-column 80)

(custom-set-faces
 '(trailing-whitespace
   ((((class color)
      (background light))
     (:background "cyan")))))


(global-auto-revert-mode 1)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(setq visible-bell t)
(load-file (concat imoryc-dir "/im-modeline.el"))

(require 'init-idle-highlight)
(idle-highlight-mode)

(setq delete-by-moving-to-trash t trash-directory "~/.Trash/emacs")
;; Ignore .DS_Store files with ido mode
(add-to-list 'ido-ignore-files "\\.DS_Store")
;; Use aspell for spell checking: brew install aspell --lang=en
(setq ispell-program-name "/usr/local/bin/aspell")

(require 'uniquify)
(setq
 uniquify-buffer-name-style 'post-forward
 uniquify-separator "@")
(setq frame-title-format
      (list '("emacs ")
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(provide 'im-basic-settings)

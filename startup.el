(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(markdown-mode
                      yaml-mode
                      haml-mode
                      autopair
                      textmate
                      exec-path-from-shell
                      ido-hacks
                      rspec-mode
                      smex
                      flx-ido
                      ruby-end
                      rspec-mode
                      quickrun
                      key-chord
                      git-gutter
                      rainbow-mode
                      ace-jump-mode
                      coffee-mode
                      js2-mode
                      expand-region
                      clojure-mode
                      multiple-cursors
                      magit
                      mark-multiple
                      projectile
                      org
                      ruby-mode
                      inf-ruby
                      browse-kill-ring
                      smartparens
                      gist
                      yasnippet
                      rainbow-delimiters
                      idle-highlight-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;;;; path
(exec-path-from-shell-initialize)

;;;; multiple-cursors
(require 'multiple-cursors)
(require 'inline-string-rectangle)
(global-set-key (kbd "C-x r t") 'inline-string-rectangle)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-<return>") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-S-SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C-M-=") 'mc/insert-numbers)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;;;; rainbow-delimeters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode-enable)

;;;; ace-jump-mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;;; faces
(make-face 'font-lock-number-face)
(set-face-attribute 'font-lock-number-face nil :inherit font-lock-constant-face)
(setq font-lock-number-face 'font-lock-number-face)
(defvar font-lock-number "[0-9-.]+\\([eE][+-]?[0-9]*\\)?")
(defvar font-lock-hexnumber "0[xX][0-9a-fA-F]+")
(defun add-font-lock-numbers (mode)
  (font-lock-add-keywords
   mode
   `((,(concat "\\<\\(" font-lock-number "\\)\\>" ) 0 font-lock-number-face)
     (,(concat "\\<\\(" font-lock-hexnumber "\\)\\>" ) 0 font-lock-number-face)
     )))


(winner-mode 1)

;;;; elisp
(defun imenu-elisp-sections ()
  (setq imenu-prev-index-position-function nil)
  (add-to-list 'imenu-generic-expression '("Sections" "^;;;; \\(.+\\)$" 1) t))

(add-hook 'emacs-lisp-mode-hook 'imenu-elisp-sections)

(font-lock-add-keywords
 'emacs-lisp-mode
 '(("'\\([0-9a-zA-Z-]*\\)" (1 'font-lock-variable-name-face))))
(add-font-lock-numbers 'emacs-lisp-mode)

;;;; exec-path-from-shell
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;;;; browse-kill-ring
(require 'browse-kill-ring)
(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;;;; change inner
;;(require 'change-inner)
;;(global-set-key (kbd "M-I") 'change-inner)
;;(global-set-key (kbd "M-O") 'change-outer)


;;;; jump-char
;;(after 'jump-char-autoloads
;;  (global-set-key (kbd "M-m") 'jump-char-forward)
;;  (global-set-key (kbd "M-M") 'jump-char-backward))

;;(after 'jump-char
;;  (setq jump-char-lazy-highlight-face nil))


;;;; git-gutter
(require 'git-gutter)
(global-git-gutter-mode t)

;;;; idle-highlight
(require 'idle-highlight-mode)
(defun idle-coding-hook ()
  (idle-highlight-mode t))

(defun set-javascript()
  (setq autopair-mode nil))
(add-hook 'prog-mode-hook 'idle-coding-hook)

;;;; various
(require 'textmate)
(textmate-mode)

(require 'paren)
(set-face-background 'show-paren-match-face (face-background 'default))
(set-face-foreground 'show-paren-match-face "red")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)
(set-default 'imenu-auto-rescan t)

(setq uniquify-buffer-name-style 'post-forward uniquify-separator "@")
(setq frame-title-format
      (list '("emacs ")
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;;;; IDO-MODE
;; Display ido results vertically, rather than horizontally
(ido-mode t)
(ido-everywhere t)
(setq ido-create-new-buffer 'always)
(add-to-list 'ido-ignore-files "\\.DS_Store")

(setq ido-file-extensions-order '(".rb" ".clj" ".el" ".md" ".conf" ".org"))
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
  (define-key ido-completion-map (kbd "<down>") 'ido-next-match)
  (define-key ido-completion-map (kbd "<up>") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)

(autoload 'ido-hacks-mode "ido-hacks" t)
(ido-hacks-mode)

(require 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)
(flx-ido-mode 1)

;; ;;;; ORG mode
(setq org-return-follows-link t)
(setq org-directory "~/Dropbox/notes")
(setq org-mobile-inbox-for-pull "~/Dropbox/notes/notes.org")
(setq org-mobile-directory "~/Dropbox/Aplikacje/MobileOrg")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-default-notes-file "Tasks")
         "* TODO %?\n  %i\n ")
        ("n" "Note" entry (file+datetree org-default-notes-file)
         "* %?\nEntered on %U\n  %i\n  ")))

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . nil)
        (clojure . t)
        (ruby . t)))

(require 'markdown-mode)
(setq markdown-imenu-generic-expression
      '(("title"  "^\\(.*\\)[\n]=+$" 1)
        ("h2-"    "^\\(.*\\)[\n]-+$" 1)
        ("h1"   "^# \\(.*\\)$" 1)
        ("h2"   "^## \\(.*\\)$" 1)
        ("h3"   "^### \\(.*\\)$" 1)
        ("h4"   "^#### \\(.*\\)$" 1)
        ("h5"   "^##### \\(.*\\)$" 1)
        ("h6"   "^###### \\(.*\\)$" 1)
        ("fn"   "^\\[\\^\\(.*\\)\\]" 1)
        ))
(setq imenu-generic-expression markdown-imenu-generic-expression)

;;(require 'undo-tree-autoloads)
;;(global-undo-tree-mode)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

(provide 'startup)

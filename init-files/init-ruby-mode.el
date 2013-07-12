(autoload 'inf-ruby-mode-hook "inf-ruby" t)
(autoload 'haml-mode "haml-mode" t)
(autoload 'ruby-end-mode "ruby-end" t)
(autoload 'rspec-mode "rspec-mode" t)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))


(add-hook 'inf-ruby-mode-hook (lambda () (require 'inf-ruby-company)))
;;(add-hook 'ruby-mode-hook 'robe-mode)
;;(push 'company-robe company-backends)

(autoload 'web-mode "web-mode" t)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(eval-after-load 'ruby-mode
  '(progn
     ;; work around possible elpa bug
     (ignore-errors (require 'ruby-compilation))
     (setq yas/mode-symbol 'ruby-mode)
     (setq yas/mode-symbol 'rails-mode)
     (require 'rbenv)
     (global-rbenv-mode)
     (rbenv-use-global)
     (require 'ruby-mode-indent-fix)
     (setq ruby-use-encoding-map nil)

     (add-hook 'ruby-mode-hook
               (lambda ()
                 (ruby-electric-mode)
                 (ruby-end-mode)))

     (add-hook 'ruby-mode-hook
               (lambda ()
                 (inf-ruby-minor-mode)))

     (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key ruby-mode-map (kbd "C-c t") 'rgc-show-ruby-tags)
     (define-key ruby-mode-map (kbd "C-M-h") 'backward-kill-word)))

(defun rails-console ()
  "Runs inf-ruby process with a rails console loaded inside"
  (interactive)
  (run-ruby "rails console"))

(defun rails-server ()
  "Runs rails server for the current project"
  (interactive)
  (ruby-compilation-run "rails server" nil "server"))

(setq ruby-use-encoding-map nil)
(setq ruby-deep-arglist nil)
(setq ruby-deep-indent-paren nil)
(setq ruby-insert-encoding-magic-comment nil)
(setq ruby-deep-indent-paren-style nil)
(setq tab-width 2)

(font-lock-add-keywords
 'ruby-mode
 '(("\\(\\b\\sw[_a-zA-Z0-9]*:\\)\\(?:\\s-\\|$\\)" (1 font-lock-constant-face))))

(setq rspec-use-rake-flag nil)
(setq rspec-use-rvm nil)
(setq rspec-use-bundler-when-possible nil)

(defun inf-previous-command-fixed ()
  "Inf comint mode previous command doesn't work with rvm or rbenv, this is a simple fix"
  (interactive)
  (save-excursion
    (move-line-up)
    (re-search-backward "^irb")
    (kill-ring-save (+ (line-beginning-position) 5) (line-end-position))))

(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

(provide 'init-ruby-mode)

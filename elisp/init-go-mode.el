(use-package go-mode
  :ensure go-mode
  :defer t
  :config
  (progn
    (defun my-go-mode-hook ()
      (setq gofmt-command "goimports")
      (add-hook 'before-save-hook 'gofmt-before-save)
      (set (make-local-variable 'company-backends) '(company-go))
      ;;(if (not (string-match "go" compile-command))
      (subword-mode 1)
      (set (make-local-variable 'compile-command)
           "go vet && go test -cover -v && go build -v")
      ;;                )


      (setq tab-width 2)
      (setq standard-indent 2)
      (setq indent-tabs-mode nil)
      (local-set-key (kbd "M-.") 'godef-jump))
    ;;(add-hook 'go-mode-hook 'go-oracle-mode)
    (add-hook 'go-mode-hook 'my-go-mode-hook)
    (add-hook 'go-mode-hook 'go-eldoc-setup)))

(use-package go-eldoc
  :ensure go-eldoc)

(use-package golint
  :ensure golint)


(provide 'init-go-mode)

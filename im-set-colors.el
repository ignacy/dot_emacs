(ignore-errors
  ;; (require 'color-theme-sanityinc-tomorrow)
  ;; (color-theme-sanityinc-tomorrow-night))
  (load-file (concat imoryc-dir "/themes/twilight-anti-bright-theme.el"))
  ;;(load-file (concat imoryc-dir "/themes/underwater-theme.el"))
  ;;(load-theme underwater-theme t))
  (load-theme twilight-anti-bright-theme t))
;; (load-file (concat imoryc-dir "/themes/darkclean-theme.el")))

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;; Diff/git addons
(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

(set-face-attribute 'default nil :family "Menlo" :height 145)

(provide 'im-set-colors)

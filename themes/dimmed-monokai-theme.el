;;; dimmed-monokai-theme.el --- an Emacs 24 theme based on Dimmed - Monokai (tmTheme)
;;
;;; Author: Auto Converted to Emacs 24 by tmtheme-to-deftheme (tm2deftheme)
;;; Version: 1412862689
;;; Original author: uonick
;;; Url: https://github.com/emacsfodder/tmtheme-to-deftheme
;;; Package-Requires: ((emacs "24.0"))
;;
;;; Commentary:
;;  This theme was automatically generated by tmtheme-to-deftheme (tm2deftheme),
;;  from Dimmed - Monokai (tmTheme) by uonick
;;
;;; Code:

(deftheme dimmed-monokai
  "dimmed-monokai-theme - Created by tmtheme-to-deftheme - 2014-10-09 15:51:29 +0200")

(custom-theme-set-variables
 'dimmed-monokai
)

(custom-theme-set-faces
 'dimmed-monokai
 ;; basic theming.

 '(default ((t (:foreground "#C5C8C6" :background "#1e1e1e" ))))
 '(region  ((t (:background "#373B41"))))
 '(cursor  ((t (:background "#fc5604"))))

 ;; Temporary defaults
 '(linum                               ((t (:foreground "#3f4040"  :background "#2f2f2f" ))))
 '(fringe                              ((t (                       :background "#2f2f2f" ))))

 '(minibuffer-prompt                   ((t (:foreground "#1278A8"  :background nil       :weight bold                                  ))))
 '(escape-glyph                        ((t (:foreground "orange"   :background nil                                                     ))))
 '(highlight                           ((t (:foreground "orange"   :background nil                                                     ))))
 '(shadow                              ((t (:foreground "#777777"  :background nil                                                     ))))

 '(trailing-whitespace                 ((t (:foreground "#FFFFFF"  :background "#C74000"                                               ))))
 '(link                                ((t (:foreground "#00b7f0"  :background nil       :underline t                                  ))))
 '(link-visited                        ((t (:foreground "#4488cc"                        :underline t :inherit (link)                  ))))
 '(button                              ((t (:foreground "#FFFFFF"  :background "#444444" :underline t :inherit (link)                  ))))
 '(next-error                          ((t (                                             :inherit (region)                             ))))
 '(query-replace                       ((t (                                             :inherit (isearch)                            ))))
 '(header-line                         ((t (:foreground "#EEEEEE"  :background "#444444" :box nil :inherit (mode-line)                 ))))

 '(mode-line-highlight                 ((t (                                             :box nil                                      ))))
 '(mode-line-emphasis                  ((t (                                             :weight bold                                  ))))
 '(mode-line-buffer-id                 ((t (                                             :box nil :weight bold                         ))))

 '(mode-line-inactive                  ((t (:foreground "#9ca19e"  :background "#2f2f2f" :box nil :weight light :inherit (mode-line)   ))))
 '(mode-line                           ((t (:foreground "#c5c8c6"  :background "#2f2f2f" :box nil ))))

 '(isearch                             ((t (:foreground "#99ccee"  :background "#444444"                                               ))))
 '(isearch-fail                        ((t (                       :background "#ffaaaa"                                               ))))
 '(lazy-highlight                      ((t (                       :background "#77bbdd"                                               ))))
 '(match                               ((t (                       :background "#3388cc"                                               ))))

 '(tooltip                             ((t (:foreground "black"    :background "LightYellow" :inherit (variable-pitch)                 ))))

 '(js3-function-param-face             ((t (:foreground "#BFC3A9"                                                                      ))))
 '(js3-external-variable-face          ((t (:foreground "#F0B090"  :bold t                                                             ))))

 '(secondary-selection                 ((t (                       :background "#342858"                                               ))))
 '(cua-rectangle                       ((t (:foreground "#E0E4CC"  :background "#342858" ))))

 ;; Magit hightlight
 '(magit-item-highlight                ((t (:foreground "white" :background "#1278A8" :inherit nil ))))

 ;; flyspell-mode
 '(flyspell-incorrect                  ((t (:underline "#AA0000" :background nil :inherit nil ))))
 '(flyspell-duplicate                  ((t (:underline "#009945" :background nil :inherit nil ))))

 ;; flymake-mode
 '(flymake-errline                     ((t (:underline "#AA0000" :background nil :inherit nil ))))
 '(flymake-warnline                    ((t (:underline "#009945" :background nil :inherit nil ))))

 ;;git-gutter
 '(git-gutter:added                    ((t (:foreground "#609f60" :bold t))))
 '(git-gutter:modified                 ((t (:foreground "#3388cc" :bold t))))
 '(git-gutter:deleted                  ((t (:foreground "#cc3333" :bold t))))

 '(diff-added                          ((t (:background "#305030"))))
 '(diff-removed                        ((t (:background "#903010"))))
 '(diff-file-header                    ((t (:background "#362145"))))
 '(diff-context                        ((t (:foreground "#E0E4CC"))))
 '(diff-changed                        ((t (:foreground "#3388cc"))))
 '(diff-hunk-header                    ((t (:background "#242130"))))


 '(font-lock-comment-face ((t (:foreground "#9A9B99"  ))))
 '(font-lock-string-face ((t (:foreground "#90A959"  ))))
 '(font-lock-builtin-face ((t (:foreground "#408080"  ))))
 '(font-lock-keyword-face ((t (:foreground "#8f5536"  ))))
 '(font-lock-type-face ((t (:foreground "#AC4142"  ))))
 '(font-lock-function-name-face ((t (:foreground "#D28445"  ))))
 '(js3-function-param-face ((t (:foreground "#6A9FB5"  ))))
 '(js2-function-param ((t (:foreground "#6A9FB5"  ))))
 '(font-lock-keyword-face ((t (:foreground "#676867"  ))))
 '(font-lock-builtin-face ((t (:foreground "#FF0080"  ))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#9A9B99"  ))))

;; Rainbow delimiters
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#4a707f"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#527b8c"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#598698"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#6391a3"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#6f9aab"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#7ca3b2"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#89acba"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#95b5c1"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#a2bdc9"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))
) ;; End face definitions

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dimmed-monokai)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; dimmed-monokai-theme.el ends here
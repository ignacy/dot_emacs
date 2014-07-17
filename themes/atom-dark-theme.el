;;; atom-dark-theme.el --- an Emacs 24 theme based on Atom Dark (tmTheme)
;;
;;; Author: Auto Converted to Emacs 24 by tmtheme-to-deftheme (tm2deftheme)
;;; Version: 1405582958
;;; Original author: Jason Truluck
;;; Url: https://github.com/emacsfodder/tmtheme-to-deftheme
;;; Package-Requires: ((emacs "24.0"))
;;
;;; Commentary:
;;  This theme was automatically generated by tmtheme-to-deftheme (tm2deftheme),
;;  from Atom Dark (tmTheme) by Jason Truluck
;;
;;; Code:

(deftheme atom-dark
  "atom-dark-theme - Created by tmtheme-to-deftheme - 2014-07-17 09:42:38 +0200")

(custom-theme-set-variables
 'atom-dark
)

(custom-theme-set-faces
 'atom-dark
 ;; basic theming.

 '(default ((t (:foreground "#F8F8F2" :background "#1d1f20" ))))
 '(region  ((t (:background "#49483E"))))
 '(cursor  ((t (:background "#F8F8F0"))))

 ;; Temporary defaults
 '(linum                               ((t (:foreground "#494a4a"  :background "#333535" ))))
 '(fringe                              ((t (                       :background "#333535" ))))

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

 '(mode-line-inactive                  ((t (:foreground "#d6d6b2"  :background "#333535" :box nil :weight light :inherit (mode-line)   ))))
 '(mode-line                           ((t (:foreground "#f8f8f2"  :background "#333535" :box nil ))))

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


 '(font-lock-comment-face ((t (:foreground "#737c7c"  ))))
 '(font-lock-string-face ((t (:foreground "#9fff60"  ))))
 '(font-lock-builtin-face ((t (:foreground "#AE81FF"  ))))
 '(font-lock-variable-name-face ((t (:foreground "#c8c5ff"  ))))
 '(font-lock-keyword-face ((t (:foreground "#8ecbfe"  ))))
 '(font-lock-type-face ((t (:foreground "#ffffac"  :underline t))))
 '(font-lock-function-name-face ((t (:foreground "#ffd2a7"  ))))
 '(js3-function-param-face ((t (:foreground "#c0c5fe"  :italic t))))
 '(js2-function-param ((t (:foreground "#c0c5fe"  :italic t))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#737c7c"  ))))

;; Rainbow delimiters
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#515858"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#596161"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#616a69"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#697272"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#717b7b"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#798484"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#828c8c"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#8a9494"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#939c9c"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))
) ;; End face definitions

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'atom-dark)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; atom-dark-theme.el ends here

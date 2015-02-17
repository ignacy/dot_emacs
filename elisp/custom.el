(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#383830" "#f92672" "#a6e22e" "#f4bf75" "#66d9ef" "#ae81ff" "#66d9ef" "#f5f4f1"])
 '(ansi-term-color-vector
   [unspecified "#081724" "#ff694d" "#68f6cb" "#fffe4e" "#bad6e2" "#afc0fd" "#d2f1ff" "#d3f9ee"] t)
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(background-mode dark)
 '(bmkp-last-as-first-bookmark-file "~/.bookmarks_emacs")
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case nil)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("b7ada9e1813e059e8c1b88785e392cd7062455db4a1d8bb6e9f2370e935ccbb0" "a233249cc6f90098e13e555f5f5bf6f8461563a8043c7502fb0474be02affeea" "ced842fb91a54d1dacf2b34e9dff77fdcba9dc9e5e9d9251fe5c098ab51171ef" "1bcc25344dbd809487d47384658a66e3219edcacbe75f02c2b69808eda750e8a" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "7dd515d883520286fc8936ce32381fb01b978d0d7cfb6fe56f7f55d8accbf63a" "f5bd8485ec9ba65551bf9b9fcaa6af6bcbaebaa4591c0f30d3e512b1d77b3481" "758da0cfc4ecb8447acb866fb3988f4a41cf2b8f9ca28de9b21d9a68ae61b181" "2d941e5a6def5bc54c685ca7f183059ebeb5cbb81a619c9ca13687d8a24451d4" "63c983a266cdf29be48a69890f88aedfd04bdd31c42b0198f9689795a25dd40e" "e06cba08bba0868b35bdf0e3a73ffdf3cc08cdd8dab4bbe89e1e57d8b8bb369a" "b4e4e03809133e174e99a25b4923e22e1ed78a6aefeb0ba6a97400f4126a59f9" "6847ddbfac01ef8d87b0bbfee6dce4f5f6a411bb4acda1e799223761befb8723" "8cf56691a70156f611ac86d0bbcbc7dee7673df195de5918f34bfdc6814ffd39" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "c0e59160f46007bd34beb9edb4274eb93b08ec159219df78a273656a3c8de33f" "a19329c8eb044f0b360bbe1f80ed320b0b79b04fd4351c58271231eec73f35c9" "4b844b30213cdb5463b54f50a2e6ad59b329b5fcc33458a545e469ae08540016" "3d7b25b9270378e32759fc2d0c5dd9c88306989887143352ea3141f8f6b1ae61" "c87cc60d01cf755375759d165c1d60d9586c6a31f0b5437a0378c2a93cfc8407" "2a4633af12fab5d00e2098d25cca0986752e21ff6211828a4aaf34e2428dfe79" "e24180589c0267df991cf54bf1a795c07d00b24169206106624bb844292807b9" "a8be70fe51a47280ddf068a8193c630e2c71b820a247dcdb188d45d0714e3b95" "0f6f3782d884f1b520a28a6b7cdd0198ddbff0ed6fe32ab3f6477bfec2ac2269" "0784ca4a498cd0f6819ba19008c74138d29fce0e7d05862d163cbf7ca77614b6" "0f6e58d1814b4138c5a88241f96547d35883cbb3df6cf9ec8ef44856ece04c13" "353861e69d6510a824905208f7290f90248f0b9354ee034fd4562b962790bdfc" "70ef61cc7736345eb1d2d449a9251e683625ba977f53a4d7cdbd4b9e81425b5e" "9eb5269753c507a2b48d74228b32dcfbb3d1dbfd30c66c0efed8218d28b8f0dc" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "789844278c5a75283b5015c1fc7bebe7e4cf97843b8f8cffe21fafa05e81e90a" "3b60e9582f0e34fa2efb6a67074264e42697a26087f16a2517f0a79a7335ab0f" "caaef884831c7dd6822d2686868e36f33621ef694d7e22c59d4d56136b4a714e" "456ac8176c7c01680384356cbdc568a7683d1bada9c83ae3d7294809ddda4014" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "8409889f57ecfde3ad50775711ed4338bb234daef38cf77278acecaca17212f9" "b88ff6188e5fe7e98dc8db32f40e05aae391a9e76adb3826e7a9f75640515181" "fbeff20de53b8af505925fee06ed2acbbbd4932e0c3f1e99089a18e01577cc53" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "5b8e23721744122c8852bc2ea3fa971b2224289c1ddbcdaa95273df2bca86ff7" "1a85b8ade3d7cf76897b338ff3b20409cb5a5fbed4e45c6f38c98eee7b025ad4" "e35ef4f72931a774769da2b0c863e11d94e60a9ad97fb9734e8b28c7ee40f49b" "a772eafba4eda0ed57a5d651a96804487a1dacbfbf8658084bfe84546a7c7008" "3164a65923ef23e0f3dff9f9607b4da1e07ef1c3888d0f6878feef6c28357732" "71b64c9f8331d7ea1429ec23c0c067bf014d78951dcfe79d1e123a78eb2ff61d" "a18ba4e20cf28d6e8032936766bb711a2adc76ec27c2246a238bd09a0dc67112" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "3bcffb95c7ac651757a9032753ac9fa9a80416cc712001648ec1d84f80bbe072" "43fa7d11f1fd4485ea4b6cb8c681e8f90d61c0698181f802570ac15d47d00400" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "6c55d5fb70499e20e645cdcf0840be1b92eea7757cba9816fc337addffd1ae02" "7ed6913f96c43796aa524e9ae506b0a3a50bfca061eed73b66766d14adfa86d1" "0f002f8b472e1a185dfee9e5e5299d3a8927b26b20340f10a8b48beb42b55102" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "08f7bee7671cb55e0c3772c8a42a03e2f4e0a7ed4cadd53444308fe1f92d5049" "6209442746f8ec6c24c4e4e8a8646b6324594308568f8582907d0f8f0260c3ae" "a005ca9ce449d199eabefe6fa80d0d1762f563460cfdea9727ccfeee05665f46" "579e9950513524d8739e08eae289419cfcb64ed9b7cc910dd2e66151c77975c4" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" "c739f435660ca9d9e77312cbb878d5d7fd31e386a7758c982fa54a49ffd47f6e" "fdb72d732d3511172f94599ae212397a4deaa888e74dc2220be86b659831eea4" "72407995e2f9932fda3347e44e8c3f29879c5ed88da71f06ba4887b0596959a4" "c69211d8567a0c5fa14b81c4cd08c4a458db7904c10d95f75d6ecd1b8baf19bd" "60f84026471bc44896ab79f0f0bb1e01d7a0eb8eecf53d90ea3e8016d020ad08" "4a60f0178f5cfd5eafe73e0fc2699a03da90ddb79ac6dbc73042a591ae216f03" "22ee8a5d6de86d5181f40e411c354ddde1f84ff246ad8a3cc8fa050282738d80" "56cb99174fad69feba8edd6663c592e77d77332fb4c4bb5be058ef459a426463" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "5799bedffd42f282db713e8a3138a0085f20b82073fb2e2a404340086b96a07b" "5ea20171762b3f9682fbf507ee4b4018ce7b6cc65415fa99799a125f112b2cdb" "c08c5e81432b54fcbc0a1f7f714687f02894e0a8d45e4a8298abb9eedd7f7a05" "3c9d994e18db86ae397d077b6324bfdc445ecc7dc81bb9d528cd9bba08c1dac1" "8a53b1ea9fccb70bac3ed0b68a522c171b6462bd68923be7500e83dc02570bf0" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "de66c72d07f5671ccf18901ab7873c94aa558d4231d678080ab194a2a95e6d91" "0c97dcff4ea6ac23af383e6153723a712c1de3a4b427e97d1e473504dbc2fe06" "1af9aa2eaaaf6cfa7d3b3d0c6d653a9e05b28f11681fbf4efb75812f4a2a310a" "a5beb9b1d6dc23dd8a3c204c159c9a5f1e0115ff14b5b8579d6f3ede4f3b3aee" "26247bcb0b272ec9a5667a6b854125450c88a44248123a03d9f242fd5c6ec36f" "3103287c8d39800d6b41f8664b223f8ecdd8c6cc0b073441e174b61afdb4ce02" "4530ef4d9cf54740fffb6ce25b393122158057d213a2b812f04930fcadf89d62" "d96416845141e99d05d45b5f99ecf46458bf97654be7d2e20184c5edcda1580a" "1934bf7e1713bf706a9cb36cc6a002741773aa42910ca429df194d007ee05c67" "e4bc8563d7651b2fed20402fe37b7ab7cb72869f92a3e705907aaecc706117b5" "3d003561784526d83d1dd187aecf4799c72af27046bc3aa2f6d95c64e5ee4746" "c01f093ab78aad6ae2c27abc47519709c6b3aaa2c1e35c712d4dd81ff1df7e31" "569dc84822fc0ac6025f50df56eeee0843bffdeceff2c1f1d3b87d4f7d9fa661" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#f1c40f")
 '(flycheck-display-errors-delay 0.5)
 '(foreground-color "#cccccc")
 '(fringe-mode 5 nil (fringe))
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (("#49483E" . 0)
    ("#67930F" . 20)
    ("#349B8D" . 30)
    ("#21889B" . 50)
    ("#968B26" . 60)
    ("#A45E0A" . 70)
    ("#A41F99" . 85)
    ("#49483E" . 100)))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(ibuffer-deletion-face (quote error))
 '(ibuffer-filter-group-name-face (quote helm-source-header))
 '(ibuffer-marked-face (quote helm-visible-mark))
 '(ibuffer-title-face (quote helm-source-header))
 '(linum-format " %7i ")
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(package-selected-packages
   (quote
    (atom-dark-theme find-file-in-project color-theme-sanityinc-tomorrow monokai-theme company-quickhelp zenburn yasnippet yaml-mode warm-night-theme waher-theme visual-regexp use-package underwater-theme ujelly-theme ubuntu-theme twilight-theme twilight-anti-bright-theme tronesque-theme tron-theme tommyh-theme sublime-themes subatomic-theme subatomic-enhanced-theme speed-type spacegray-theme soothe-theme soft-charcoal-theme smyx-theme smex smartscan smartparens slime-theme sane-term ruby-tools ruby-hash-syntax rspec-mode rhtml-mode rbenv rainbow-mode rainbow-delimiters quickrun projectile-rails professional-theme persp-projectile oldlace-theme noctilux-theme naquadah-theme mustard-theme multiple-cursors monochrome-theme minimal-theme mellow-theme mark-multiple magit lush-theme key-chord jujube-theme json-reformat js2-mode jade-mode ir-black-theme indent-guide ido-hacks ido-better-flex ibuffer-vc highlight-symbol highlight-indentation helm-projectile helm-mt gruvbox-theme grandshell-theme gotham-theme golint go-eldoc github-theme git-gutter-fringe git-gutter+ gist gandalf-theme font-lock+ flycheck flx-ido flatui-theme flatland-theme firecode-theme firebelly-theme fill-column-indicator expand-region exec-path-from-shell enh-ruby-mode emr dropdown-list darkmine-theme company-go color-theme-zenburn color-identifiers-mode colonoscopy-theme clojure-mode browse-kill-ring base16-theme auto-dim-other-buffers ace-isearch)))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(red "#ffffff")
 '(rspec-command-options "--color --order random")
 '(rspec-use-bundler-when-possible t)
 '(rspec-use-spring-when-possible nil)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(vc-annotate-background "#2b2b2b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#bc8383")
     (40 . "#cc9393")
     (60 . "#dfaf8f")
     (80 . "#d0bf8f")
     (100 . "#e0cf9f")
     (120 . "#f0dfaf")
     (140 . "#5f7f5f")
     (160 . "#7f9f7f")
     (180 . "#8fb28f")
     (200 . "#9fc59f")
     (220 . "#afd8af")
     (240 . "#bfebbf")
     (260 . "#93e0e3")
     (280 . "#6ca0a3")
     (300 . "#7cb8bb")
     (320 . "#8cd0d3")
     (340 . "#94bff3")
     (360 . "#dc8cc3"))))
 '(vc-annotate-very-old-color "#dc8cc3")
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:background "DarkBlue" :foreground "gray93" :weight normal))))
 '(mode-line ((t (:box nil) (:background "#grey30"))))
 '(mode-line-inactive ((t (:box nil) (:background "#grey20"))))
 '(region ((((class color) (min-colors 89)) (:background "#666666" :foreground "#111111")))))

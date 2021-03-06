;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;;;; Chat
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; erc
     ;; jabber
     ;; rcirc
     ;; slack

     ;;;; Checkers
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     spell-checking
     syntax-checking

     ;;;; Completion
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     (auto-completion :variables
                      auto-completion-return-key-behaviour nil
                      auto-completion-tab-key-behaviour 'complete
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t)
     helm
     ;; ivy

     ;;;; Emacs
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; better-defaults
     ibuffer
     (org :variables
          org-enable-github-support t)
     ;; semantic
     ;; smex
     typography

     ;;;; Email
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; gnus
     ;; mu4e

     ;;;; Frameworks
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     django
     ;; react
     ;; ruby-on-rails

     ;;;; Fun
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     emoji
     games
     ;; selectric
     xkcd

     ;;;; International
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; chinese

     ;;;; Keyboard Layouts
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; bepo

     ;;;; Lang
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; agda
     ;; asciidoc
     asm
     ;; autohotkey
     bibtex
     (c-c++ :variables
            c-c++-enable-clang-support t)
     ;; clojure
     ;; common-lisp
     ;; csharp
     csv
     ;; d
     ;; elixir
     ;; elm
     emacs-lisp
     ;; erlang
     ;; ess
     extra-langs
     ;; faust
     ;; fsharp
     ;; go
     ;; graphviz
     ;; haskell
     html
     ;; idris
     ipython-notebook
     ;; java
     javascript
     (latex :variables
            latex-build-command "LatexMk"
            latex-enable-auto-fill t
            latex-enable-folding t
            )
     lua
     markdown
     ;; nim
     ;; ocaml
     ;; octave
     ;; php
     ;; plantuml
     ;; purescript
     (python :variables
             python-sort-imports-on-save t)
     ;; racket
     ;; ruby
     rust
     ;; scala
     ;; scheme
     shell-scripts
     ;; sml
     ;; sql
     ;; swift
     ;; typescript
     ;; vimscript
     ;; windows-scripts
     yaml

     ;;;; OS
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; nixos
     ;; osx

     ;;;; Pair Programming
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; floobits

     ;;;; Source Control
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     git
     github
     ;; perforce
     (version-control :variables
                      version-control-global-margin t)

     ;;;; Tags
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; cscope
     ;; gtags

     ;;;; Themes
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     (colors :variables
             colors-colorize-identifiers 'all)
     ;; themes-megapack
     ;; theming

     ;;;; Tools
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; ansible
     ;; cfengine
     chrome
     ;; command-log
     ;; dash
     ;; deft
     ;; fasd
     finance
     ;; geolocation
     imenu-list
     ;; nginx
     ;; pandoc
     pdf-tools
     ;; prodigy
     ;; puppet
     ;; ranger
     restclient
     ;; salt
     ;; shell
     speed-reading
     systemd
     ;; terraform
     ;; tmux
     ;; vagrant
     ycmd

     ;;;; Vim
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     evil-cleverparens
     ;; evil-commentary
     evil-snipe
     ;; vim-empty-lines
     ;; vim-powerline
     ;; vinegar

     ;;;; Web Services
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; elfeed
     ;; evernote
     search-engine
     ;; spotify
     ;; twitter
     ;; wakatime

     ;;;; Other
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; rebox
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when downloading packages.
   ;; Possible values are `used', `used-but-keep-unused' and `all'. `used' will
   ;; download only explicitly used packages and remove any unused packages as
   ;; well as their dependencies. `used-but-keep-unused' will download only the
   ;; used packages but won't delete them if they become unused. `all' will
   ;; download all the packages regardless if they are used or not and packages
   ;; won't be deleted by Spacemacs. (default is `used')
   dotspacemacs-download-packages 'used))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of of
   ;; the form `(list-type . list-size)`. If nil it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   dotspacemacs-startup-lists '((todos . 5)
                                (projects . 5)
                                (recents . 10))
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(solarized-dark
                         solarized-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Inconsolata\\-g for Powerline"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'current
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; exec-path-from-shell
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq exec-path-from-shell-arguments '("-l"))

  ;; LaTeX configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq TeX-electric-sub-and-superscript t)
  (setq LaTeX-math-list '((?\C-n "partial" "Misc Symbol" 8706)))

  ;; BibTeX Configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq bibtex-align-at-equal-sign t
        bibtex-autoadd-commas t
        bibtex-comma-after-last-field t)

  ;; Ycmd
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (set-variable 'ycmd-server-command '("python2" "/home/josh/src/ycmd/ycmd"))
  ;; (setq ycmd-force-semantic-completion t)

  ;; Org configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq org-format-latex-options
        '(:foreground default
                      :background default
                      :scale 2.0
                      :html-foreground "Black"
                      :html-background "Transparent"
                      :html-scale 2.0
                      :matchers ("begin" "$1" "$" "$$" "\\(" "\\[")))

  ;; Rust mode
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq rust-format-on-save t)
  (setq racer-rust-src-path "~/src/rust/rust/src")
  (setq racer-cmd "~/.cargo/bin/racer")

  ;; Magit
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq magit-commit-arguments '("--signoff" "--gpg-sign=Joshua Ellis <josh@jpellis.me>"))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; Miscellaneous
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Enable multiple cursors globally.
  (global-evil-mc-mode)

  ;; Prefer double spaces after lines
  (setq sentence-end-double-space t)

  ;; Setup the browser
  (setq browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "chrome")

  ;; Smartparens
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq sp-highlight-pair-overlay nil)

  ;; Web-Mode
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq web-mode-enable-current-element-highlight t
        web-mode-enable-element-content-fontification t
        web-mode-enable-element-tag-fontification t
        web-mode-markup-indent-offset 2
        web-mode-code-indent-offset 2)

  ;; Latex
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Use Zathura as the PDF viewer
  (add-hook 'TeX-mode-hook
            '(lambda ()
               (add-to-list 'TeX-view-program-selection
                            '(output-pdf "Zathura"))))

  ;; Set master bibliography location
  (setq reftex-default-bibliography '("~/Papers/references.bib"))

  ;; Bibtex
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; see org-ref for use of these variables
  (setq org-ref-default-bibliography '("~/Papers/references.bib")
        org-ref-pdf-directory "~/Papers/"
        org-ref-open-pdf-function (lambda (fpath) (start-process "zathura" "*helm-bibtex-zathura*" "/usr/bin/zathura" fpath))
        org-ref-bibliography-notes "~/Papers/notes.org")

  ;; Org Mode
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (with-eval-after-load 'org
    (setq org-file-apps '(("\\.pdf::\\(\\d+\\)\\'" . "zathura -P %1 %s")
                          ("\\.pdf\\'" . "zathura %s"))
          org-latex-pdf-process '("latexmk %f")))

  ;; Wolfram mode
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq wolfram-indent 2)

  ;; Neotree
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq neo-hidden-regexp-list '(
                                 ;; Hidden files
                                 "^\\."
                                 ;; Backups/Temporary file
                                 "~$"
                                 "^#.*#$"
                                 ;; Python compiled
                                 "\\.pyc$"
                                 ;; Emacs compiled
                                 "\\.elc$"
                                 ;; LaTeX temporary files
                                 "\\.aux$"
                                 "\\.bbl$"
                                 "\\.bcf$"
                                 "\\.blg$"
                                 "\\.fdb_latexmk$"
                                 "\\.fls$"
                                 "\\.glg$"
                                 "\\.glo$"
                                 "\\.gls$"
                                 "\\.ist$"
                                 "\\.log$"
                                 "\\.nav"
                                 "\\.out$"
                                 "\\.run\\.xml$"
                                 "\\.snm"
                                 "\\.synctex\\.gz$"
                                 "\\.synctex\\.gz\\(busy\\)$"
                                 "\\.toc$"
                                 "\\.unq$"
                                 ))

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

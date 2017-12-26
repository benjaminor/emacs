;;; package --- summary
;;; My emacs configuration file;;;;;;;;;;;;;;;;;;

;;; ouf of use as of 2017-12-22
;;; because outsourced in base.el
;;; stays commented for two weeks, the gets deleted
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq inhibit-startup-message t)                                           ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                ;;
;;                                                                            ;;
;; ;;;write over marked code                                                  ;;
;; (delete-selection-mode 1)                                                  ;;
;;                                                                            ;;
;; (global-hl-line-mode t)                                                    ;;
;;                                                                            ;;
;; ;(require 'iso-transl)                                                     ;;
;; ;; Tell emacs where is your personal elisp lib dir                         ;;
;;                                                                            ;;
;; (load-library "url-handlers")                                              ;;
;;                                                                            ;;
;; (add-to-list 'load-path "~/.emacs.d/lisp/autopair")                        ;;
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/aribas")               ;;
;; (require 'package)                                                         ;;
;;                                                                            ;;
;;                                                                            ;;
;; ;;;;;;;;;;;;;;;; ELPA Sources ;;;;;;;;;;;;;;;;                             ;;
;;                                                                            ;;
;; (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")        ;;
;;                       ("melpa" . "https://melpa.org/packages/")            ;;
;;                       ))                                                   ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;                                                 ;;
;; (package-initialize)                                                       ;;
;;                                                                            ;;
;;                                                                            ;;
;; ;;;set PATH variable                                                       ;;
;; (setenv "PATH" (concat (getenv "PATH") ":/usr/texbin"))                    ;;
;; (setq exec-path (append exec-path '("/usr/texbin")))                       ;;
;;                                                                            ;;
;;                                                                            ;;
;;                                                                            ;;
;; ;; Bootstrap `use-package'                                                 ;;
;; (unless (package-installed-p 'use-package)                                 ;;
;;   (package-refresh-contents)                                               ;;
;;   (package-install 'use-package))                                          ;;
;;                                                                            ;;
;;                                                                            ;;
;; (eval-when-compile                                                         ;;
;;   (require 'use-package))                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load the packaged named xyz.


;;;;;Code from emacs-bootstrap
(add-to-list 'load-path (concat user-emacs-directory "elisp"))


(require 'base)

(require 'base-theme)

(require 'base-extensions)

(require 'base-functions)

(require 'text-completion)

(require 'lisp-setup)

(require 'latex)



;; ;;;;; Key bindings ;;;;;;

;; (global-set-key "\C-x/" 'point-to-register)
;; (global-set-key "\C-xj" 'jump-to-register)
;; ;;(global-set-key "\C-xc" 'compile)


;; ;;;;Open certain directories easy
;; (global-set-key "\C-xä" 'my-find-texfiles)
;; (defun my-find-texfiles ()
;;   "force a starting path"
;;   (interactive)
;;   (let ((default-directory "~/Documents/Latex/"))
;;     (call-interactively 'helm-find-files)))

;; (global-set-key "\C-xü" 'my-find-cfiles)
;;	(defun my-find-cfiles ()
;;   "force a starting path"
;;   (interactive)
;;   (let ((default-directory "~/Documents/c-files/"))
;;     (call-interactively 'helm-find-files)))

;; (global-set-key "\C-xp" 'my-find-pythonfile)
;; (defun my-find-pythonfile ()
;;   "force a starting path"
;;   (interactive)
;;   (let ((default-directory "~/Documents/Python/"))
;;     (call-interactively 'helm-find-files)))


;; ;;
;; ;; Aliases
;; ;;
;; (defalias 'sh 'shell)
;; (defalias 'indr 'indent-region)

;; (setq tab-always-indent 'complete)




;;; TODO: see if this works together



;; (use-package which-key
;;   :ensure t
;;   :config
;;   (which-key-mode))

;; (use-package try
;;   :ensure t
;;   :defer t)

;; (use-package tabbar
;;   :ensure t
;;   :config
;;   (tabbar-mode 1))

;; (use-package ace-window
;;   :ensure t
;;   :init
;;   (progn
;;     (global-set-key [remap other-window] 'ace-window)
;;     (custom-set-faces
;;      '(aw-leading-char-face
;;        ((t (:inherit ace-jump-face-foreground :height 3.0)))))
;;     ))


;; (use-package general
;;   :ensure t
;;   )



;;;;;;;;;;;; AUTOCOMPLETION ;;;;;;;;;;;;;;;;;;;;;;

;; yasnippet
;;; should be loaded before auto complete so that they can work together
;; == YASnippet ==
;; (use-package yasnippet
;;   :ensure t
;;   :defer t
;;   :config (yas-global-mode t)
;;   )

;; == ws-butler ==
;; This cleans up any whitespace I have at the end of my lines.
;; (use-package ws-butler
;;   :ensure t
;;   :init
;;   (ws-butler-global-mode)
;;   :diminish ws-butler-mode
;;   )


;; (use-package company-math
;;   :ensure t
;;   :defer t)
;; (use-package company-auctex
;;   :ensure t
;;   :defer t)
;; (use-package company-irony
;;   :ensure t
;;   :defer t)
;; (use-package company-anaconda
;;   :ensure t
;;   :defer t)
;; (use-package company-c-headers
;;   :ensure t
;;   :defer t)



;; (use-package  company-statistics
;;   :ensure t
;;   :defer t
;;   :config
;;   (company-statistics-mode))


;; (use-package company
;;   :ensure t
;;   :diminish company-mode
;;   :init
;;   (global-company-mode 1)
;;   (bind-key "C-<tab>" #'company-complete)
;;   ;; (general-define-key
;;   ;;  :keymaps 'company-active-map
;;   ;;  "C-j" 'company-select-next
;;   ;;  "C-k" 'company-select-previous
;;   ;;  "C-l" 'company-complete-selection)
;;   :config
;;   (setq company-idle-delay              0.1
;;	company-minimum-prefix-length   2
;;	company-show-numbers            t
;;	company-tooltip-limit           20
;;	company-dabbrev-downcase        nil
;;	)
;;   (add-to-list 'company-backends 'company-c-headers)
;; ;;  (add-to-list 'company-backends 'company-math-symbols-unicode)
;;  ;; (add-to-list 'company-backends 'company-dabbrev-code)
;; ;; (add-to-list 'company-backends 'company-yasnippet)
;;   (add-to-list 'company-backends 'company-irony)
;;   )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;, C-MODE ;;;;;;;;;;;;;;;;;;;;;;
(use-package cc-mode
  :defer t
  :config
  (setq-default c-basic-offset 4 c-default-style "linux")
  (setq-default tab-width 4 indent-tabs-mode t)
  (define-key c-mode-base-map (kbd "RET") 'newline-and-indent))




(use-package cmake-mode
  :ensure t
  :defer t
  :init
					; Add cmake listfile names to the mode list.
  (setq auto-mode-alist
	(append
	 '(("CMakeLists\\.txt\\'" . cmake-mode))
	 '(("\\.cmake\\'" . cmake-mode))
	 auto-mode-alist))
  )


;; == Markdown ==
(use-package markdown-mode
  :ensure t
  :defer t
  :mode (("\\.text\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode)
	 ("\\.md\\'" . markdown-mode))
  )


;;; Should be replaced by flycheck
;; (use-package flyspell
;;   :defer t
;;   :diminish (flyspell-mode . " φ"))

;;;;;;;;;;;;;;;;; AUCTEX ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;For Auctex < 11.82 exchange ";;" in the following 2 lines
;;(require ’tex-site)
;; == LaTex / AucTeX ==







;; (use-package helm
;;   :ensure t
;;   :diminish helm-mode
;;   :init
;;   ;; Changes the helm prefix key
;;   (global-set-key (kbd "C-c h") 'helm-command-prefix)
;;   (global-unset-key (kbd "C-x c"))
;;   ;; Supress warning
;;  (setq ad-redefinition-action 'accept)

;;   :config
;;   (require 'helm)
;;   (require 'helm-files)
;;   (require 'helm-config) ; Necessary for helm-mode

;;   ;; Additional key bindings
;;   (bind-key "<tab>" 'helm-execute-persistent-action helm-map)
;;   (bind-key [escape] 'helm-keyboard-quit helm-map)
;;   (bind-key "C-l" (kbd "RET") helm-map)

;;   (setq helm-split-window-in-side-p           t
;;	helm-idle-delay                       0.0
;;	helm-input-idle-delay 0.01
;;	helm-yas-display-key-on-candidate t
;;	helm-quick-update t
;;	helm-move-to-line-cycle-in-source     t
;;	helm-ff-search-library-in-sexp        t
;;	helm-scroll-amount                    8
;;	helm-M-x-fuzzy-match                  t
;;	helm-ff-file-name-history-use-recentf t)

;;   (defhydra hydra-helm-menu (:color pink
;;				    :hint nil)
;;     " THIS IS INCOMPLETE
;; ^^^^^^^^---------------
;; d: delete"
;;     ("d" helm-buffer-run-kill-persistent)
;;     ("j" helm-next-line)
;;     ("q" quit-window "quit" :color blue)
;;     )

;;   (if (string-equal system-type "gnu/linux")
;;       (setq helm-grep-default-command
;;	    "grep --color=always -d skip %e -n%cH -e %p %f"
;;	    helm-grep-default-recurse-command
;;	    "grep --color=always -d recurse %e -n%cH -e %p %f"))

;;   (helm-mode 1)

;;   (defun spacemacs//hide-cursor-in-helm-buffer ()
;;     "Hide the cursor in helm buffers."
;;     (with-helm-buffer
;;       (setq cursor-in-non-selected-windows nil)))
;;   (add-hook 'helm-after-initialize-hook 'spacemacs//hide-cursor-in-helm-buffer)

;;   :bind (("C-x b" . helm-mini)
;;	 ("C-x C-f" . helm-find-files)
;;	 ("M-x" . helm-M-x)
;;	 ("C-h a" . helm-apropos)
;;	 ("M-y" . helm-show-kill-ring)
;;	 :map helm-map
;;	 ("C-i" . helm-execute-persistent-action)
;;	 ("C-z" . helm-select-action)
;;	 ("C-j" . helm-next-line)
;;	 ("C-k" . helm-previous-line)
;;	 ("C-h" . helm-next-source)
;;	 ("C-S-h" . describe-key)
;;	 ("C-e" . hydra-helm-menu/body)
;;	 :map helm-find-files-map
;;	 ("C-l" . helm-execute-persistent-action)
;;	 ("C-h" . helm-find-files-up-one-level)
;;	 :map helm-read-file-map
;;	 ("C-l" . helm-execute-persistent-action)
;;	 ("C-h" . helm-find-files-up-one-level)

;;	 )
;;   )




;;Add yasnippet support for all company backends
;;https://github.com/syl20bnr/spacemacs/pull/179
;; (defvar company-mode/enable-yas t
;;   "Enable yasnippet for all backends.")

;; (defun company-mode/backend-with-yas (backend)
;;   (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
;;       backend
;;     (append (if (consp backend) backend (list backend))
;;	    '(:with company-yasnippet))))

;; (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
;; ;; helm-company choose from company completions with C-:
;; (with-eval-after-load 'company
;;   (define-key company-mode-map (kbd "C-:") 'helm-company)
;; (define-key company-active-map (kbd "C-:") 'helm-company))




;; (use-package helm-swoop
;;   :ensure t
;;   :config
;;   (progn
;;					; Change the keybinds to whatever you like :)
;;     (global-set-key (kbd "M-i") 'helm-swoop)
;;     (global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
;;     (global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
;;     (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;;     ;; When doing isearch, hand the word over to helm-swoop
;;     (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;;     ;; From helm-swoop to helm-multi-swoop-all
;;     (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;;     ;; When doing evil-search, hand the word over to helm-swoop
;;     ;; (define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)

;;     ;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
;;     (define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;;     ;; Move up and down like isearch
;;     (define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
;;     (define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
;;     (define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
;;     (define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

;;     ;; Save buffer when helm-multi-swoop-edit complete
;;     (setq helm-multi-swoop-edit-save t)

;;     ;; If this value is t, split window inside the current window
;;     (setq helm-swoop-split-with-multiple-windows nil)

;;     ;; Split direcion. 'split-window-vertically or 'split-window-horizontally
;;     (setq helm-swoop-split-direction 'split-window-vertically)

;;     ;; If nil, you can slightly boost invoke speed in exchange for text color
;; ;;    (setq helm-swoop-speed-or-color nil)

;;     ;; ;; Go to the opposite side of line from the end or beginning of line
;;     (setq helm-swoop-move-to-line-cycle t)

;;     ;; Optional face for line numbers
;;     ;; Face name is `helm-swoop-line-number-face`
;;     (setq helm-swoop-use-line-number-face t)

;;     ;; If you prefer fuzzy matching
;; ;;    (setq helm-swoop-use-fuzzy-match t)

;;     ;; Disable pre-input
;;     (setq helm-swoop-pre-input-function
;;	  (lambda () ""))))







;; == Projectile ==
;; (use-package projectile
;;   :ensure t
;;   :defer t
;;   :diminish projectile-mode
;;   :init
;;   (projectile-mode)
;;   (use-package helm-projectile
;;     :ensure t
;;     :defer t
;;     :after helm
;;     :config
;;     (helm-projectile-on)
;;      ;;(general-define-key
;;      ;; :prefix gjs-leader-key
;;      ;; :states '(normal motion)
;;      ;; ;; Ensure (leader p) maps to the projectile bindings
;;      ;; "p" '(:keymap projectile-command-map :which-key "Projectile")
;;      ;; "s" '(helm-projectile-ag :which-key "projectile ag")
;;      ;; "p/" '(helm-projectile-ag)
;;      ;; )
;;     )
;;   )

;; == ag ==
;; Note that 'ag' (the silver searcher) needs to be installed.
;; Ubuntu: sudo apt-get install silversearcher-ag
;; OSX: brew install ag
;; (use-package ag
;;   :ensure t
;;   :defer t
;;   )
;; (use-package helm-ag
;;   :ensure t
;;   :defer t
;;   :after helm
;;   :config
;;   (general-define-key :keymaps 'helm-ag-map
;;		      "C-c C-e" 'helm-ag-edit)
;;   (bind-key "C-c C-e" 'helm-ag-edit helm-ag-mode-map)
;;   )

;; == compile ==

;; https://emacs.stackexchange.com/questions/8135/why-does-compilation-buffer-show-control-characters
;; (use-package ansi-color
;;   :ensure t
;;   :defer t
;;   :config (progn
;;	    (defun my/ansi-colorize-buffer ()
;;	      (let ((buffer-read-only nil))
;;		(ansi-color-apply-on-region (point-min) (point-max))))
;;	    (add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer)))






;; ;; == undo-tree ==
;; (use-package undo-tree
;;   :ensure t
;; ;;  :defer t
;;   :diminish undo-tree-mode
;;   :config
;;   (progn
;;     (global-undo-tree-mode)
;;     (setq undo-tree-visualizer-timestamps t)
;;     (setq undo-tree-visualizer-diff t)))



;; moved to base-extensions.el
;; (use-package magit
;;   :ensure t
;;   :defer t
;;   :bind ("C-x g" . magit-status)
;;   :init
;;   (setq magit-diff-options (quote ("--word-diff")))
;;   (setq magit-diff-refine-hunk 'all)
;;   )

;; == flycheck ==

;; TODO: create proper flycheck setup in base-extensions.el
(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode)
  ;; check OS type
  (if (string-equal system-type "gnu/linux")
      (progn
	(custom-set-variables
	 '(flycheck-c/c++-clang-executable "clang-3.5")
	 )))
  (add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-gcc))
  )

;;;; Flycheck;;;;;
;; (use-package flycheck
;;   :ensure t
;;   :init (global-flycheck-mode))
;;;;;;;;;;;;;;;;




;;; Commentary:
;; The Robot Operating System (ROS) requires a number of different disambiguated
;; tools for emacs editing. This file has some of the hooks and modes for
;; working with the various files.
;;; Code:

;; == File types ==
;; Web-mode for .launch files (effectively xml)
(add-to-list 'auto-mode-alist '("\\.launch?\\'" . web-mode))

;; == YAML Mode ==
(use-package yaml-mode
  :ensure t
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
  )


;; ; flashes the cursor's line when you scroll
;; (use-package beacon
;;   :ensure t
;;   :defer t
;; :config
;; (beacon-mode 1)
;; ; this color looks good for the zenburn theme but not for the one
;; ; I'm using for the videos
;; ; (setq beacon-color "#666600")
;; )

;; ; deletes all the whitespace when you hit backspace or delete
;; (use-package hungry-delete
;;   :ensure t
;;   :defer t
;;   :config
;; (global-hungry-delete-mode))


;; ; expand the marked region in semantic increments (negative prefix to reduce region)
;; (use-package expand-region
;;   :ensure t
;;   :defer t
;; :config
;; (global-set-key (kbd "C-=") 'er/expand-region))

;; tags for code navigation
(use-package ggtags
  :ensure t
  :defer t
  :config
  (add-hook 'c-mode-common-hook
	    (lambda ()
	      (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
		(ggtags-mode 1))))
  )


;; (use-package moe-theme
;;   :ensure t)
;; (moe-light)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-c/c++-clang-executable "clang-3.5")
 '(package-selected-packages
   (quote
    (pyenv-mode url-handlers company-c-headers company-yasnippet company-irony color-theme moe-theme ggtags expand-region hungry-delete beacon elpy undo-tree company-statistics company-math helm-company company-anaconda helm-swoop magit cmake-mode with-editor magit-popup
		(\, git-commit)
		(\, general)
		(\, company-auctex)
		(\, cmake-mode)
		(\, undo-tree)
		(\, ace-window)
		try tabbar which-key helm-ag ag helm-projectile projectile ws-butler yaml-mode use-package markdown-mode hydra helm flycheck auto-complete-auctex auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

					;(provide '.emacs);;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; inhibit GUI tool bar
(tool-bar-mode -1)

;; addons
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/cyberpunk-theme.el")
(load-theme 'cyberpunk t)

(add-to-list 'load-path "~/.emacs.d/telephone-line")
(require 'telephone-line)
(telephone-line-mode 1)

(add-to-list 'load-path "~/.emacs.d/smex")
(require 'smex)
(smex-initialize)

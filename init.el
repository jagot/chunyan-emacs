;; Packages

(require 'package) ;; You might already have this line

; list the repositories containing them
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(use-package exec-path-from-shell :ensure t)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(use-package ess :ensure t)
(use-package ess-site)
(use-package julia-mode :ensure t)
(use-package magit :ensure t
  :bind (("C-c m" . magit-status)))

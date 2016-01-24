(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "s-p") 'projectile-find-file)

(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(global-set-key (kbd "C-c s") 'helm-projectile-grep)
(global-set-key (kbd "C-c f") 'helm-projectile-find-file)
(global-set-key (kbd "C-l") 'goto-line)


(add-to-list 'hs-special-modes-alist
	     '(ruby-mode
	       "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
	       (lambda (arg) (ruby-end-of-block)) nil))

;;(hs-minor-mode)


(drag-stuff-global-mode)
(global-set-key (kbd "M-n") 'drag-stuff-down)
(global-set-key (kbd "M-p") 'drag-stuff-up)

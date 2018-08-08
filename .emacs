(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(defun my-setup-indent (n)
  ;; java/c/c++                                                                                                                                                                                                                                                                                                                                                                              
  (setq-local c-basic-offset n)
  ;; web development                                                                                                                                                                                                                                                                                                                                                                         
  (setq-local coffee-tab-width n) ; coffeescript                                                                                                                                                                                                                                                                                                                                             
  (setq-local javascript-indent-level n) ; javascript-mode                                                                                                                                                                                                                                                                                                                                   
  (setq-local js-indent-level n) ; js-mode                                                                                                                                                                                                                                                                                                                                                   
  (setq-local js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level                                                                                                                                                                                                                                                                                              
  (setq-local web-mode-markup-indent-offset n) ; web-mode, html tag in html file                                                                                                                                                                                                                                                                                                             
  (setq-local web-mode-css-indent-offset n) ; web-mode, css in html file                                                                                                                                                                                                                                                                                                                     
  (setq-local web-mode-code-indent-offset n) ; web-mode, js code in html file                                                                                                                                                                                                                                                                                                                
  (setq-local css-indent-offset n) ; css-mode                                                                                                                                                                                                                                                                                                                                                
  )

(defun code-style ()
  (interactive)
  (setq indent-tabs-mode nil)
  (my-setup-indent 2)
  )

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(projectile-rails-mode)

(global-set-key (kbd "s-p") 'projectile-find-file)

(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(global-set-key (kbd "C-c s") 'helm-projectile-ag)
(global-set-key (kbd "C-c f") 'helm-projectile-find-file)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-c RET") 'projectile-rails-goto-file-at-point)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'rjsx-mode-hook 'code-style)
(custom-set-variables
 '(package-selected-packages
   (quote
    (yaml-mode helm-ag projectile-rails helm-projectile))))
(custom-set-faces)

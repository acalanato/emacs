;;; package -- Tern mode
;;; Commentary:
;;; i just want the lint to shut up
;;; Code:
(add-to-list 'load-path "~/.tern/emacs")
(autoload 'tern-mode "tern.el" nil t)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js-mode-hook (lambda () (auto-complete-mode t)))


(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))



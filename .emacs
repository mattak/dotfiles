
; color
(setq theme-color '("blue" "lavender"))

(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-foreground 'show-paren-match-face (car theme-color))
(set-face-background 'show-paren-match-face (cadr theme-color))

; mode line
(display-time-mode t)
(line-number-mode t)
(column-number-mode t)

(set-face-foreground 'modeline (car theme-color))
(set-face-background 'modeline (cadr theme-color))

; start up message
(setq inhibit-start-screen t)

; cursor setting
(set-scroll-bar-mode 'right)

;; auto save buffer
(setq backup-inhibited t)
(setq make-backup-files nil)

(add-to-list 'load-path "~/.emacs.d")
(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers)


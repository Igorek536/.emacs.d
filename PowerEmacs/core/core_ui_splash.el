;;; package -- core_ui_splash
;;; Commentary:

;;; PowerEmacs Splash image
;;; Author : Igorek536
;;; Version: 0.1
;;; This module is part of PowerEmacs distribution.

;;; Code:

(provide 'core_ui_splash)

(setq fancy-splash-image (expand-file-name "splash.png" (concat user-emacs-directory "PowerEmacs")))

(setq fancy-startup-text
      `((:face (variable-pitch (:foreground "#7dc7ff"))
     "\n\n\nWelcome to "
     :link ("PowerEmacs"
            ,(lambda (_button)
               (browse-url
                "https://github.com/Igorek536/PowerEmacs"))
            "Browse official PowerEmacs site.")
     ", yet another distribution of "
     :link ("GNU Emacs"
            ,(lambda (_button)
               (browse-url "https://www.gnu.org/software/emacs/"))
            "Browse https://www.gnu.org/software/emacs/")
     ".\n"
     "Before start, please read the "
     :link ("Emacs Tutorial"
            ,(lambda (_button)
               (help-with-tutorial)))
     ".\n\n"
     :face (variable-pitch (:foreground "cyan3"))
     "PowerEmacs is:     "
     "("
     :face (variable-pitch (:foreground "PaleVioletRed"))
     "PSP principle"
     :face (variable-pitch (:foreground "cyan3"))
     ")\n"
     :face (variable-pitch (:foreground "SpringGreen1"))
     "\t- "
     :face (variable-pitch (:foreground "PaleVioletRed"))
     "P"
     :face (variable-pitch (:foreground "SpringGreen1"))
     "reconfigured\n"
     "\t- "
     :face (variable-pitch (:foreground "PaleVioletRed"))
     "S"
     :face (variable-pitch (:foreground "SpringGreen1"))
     "imple\n"
     "\t- "
     :face (variable-pitch (:foreground "PaleVioletRed"))
     "P"
     :face (variable-pitch (:foreground "SpringGreen1"))
     "owerful\n"
     :face variable-pitch
     "\n\n"))
)

(defun fancy-startup-tail (&optional concise)
  "Insert the tail part of the splash screen into the current buffer."
  (unless concise
    (fancy-splash-insert
     :face '(variable-pitch (:foreground "#7dc7ff"))
     "\nWant to start?     "
     :link `("Open Home Directory"
	     ,(lambda (_button) (dired "~"))
	     "Open your home directory, to operate on its files")
     "   or   "
     :link `("Open a File"
	     ,(lambda (_button) (call-interactively 'find-file))
	     "Specify a new file's name, to edit the file")
     ".\n"
     ))
  (fancy-splash-insert
   :face '(variable-pitch (:foreground "#7dc7ff" :slant italic))
   "To quit a partially entered command, type "
   :face '(variable-pitch (:foreground "tomato" :underline t))
   "Control-g"
   :face '(variable-pitch (:foreground "#7dc7ff" :slant italic))
   ".\n\n")
  (fancy-splash-insert :face `(variable-pitch font-lock-builtin-face)
		       "\nThis is "
		       (emacs-version)
		       "\n"
		       :face '(variable-pitch (:height 0.8))
		       emacs-copyright
		       "\n")
    (when auto-save-list-file-prefix
    (let ((dir  (file-name-directory auto-save-list-file-prefix))
	  (name (file-name-nondirectory auto-save-list-file-prefix))
	  files)
      ;; Don't warn if the directory for auto-save-list files does not
      ;; yet exist.
      (and (file-directory-p dir)
	   (setq files (directory-files dir nil (concat "\\`" name) t))
	   (fancy-splash-insert :face '(variable-pitch font-lock-comment-face)
				(if (= (length files) 1)
				    "\nAn auto-save file list was found.  "
				  "\nAuto-save file lists were found.  ")
				"If an Emacs session crashed recently,\ntype "
				:link `("M-x recover-session RET"
					,(lambda (_button)
					   (call-interactively
					    'recover-session)))
				" to recover the files you were editing."))))

  (when concise
    (fancy-splash-insert
     :face 'variable-pitch "\n"
     :link `("Dismiss this startup screen"
	     ,(lambda (_button)
		(when startup-screen-inhibit-startup-screen
		  (customize-set-variable 'inhibit-startup-screen t)
		  (customize-mark-to-save 'inhibit-startup-screen)
		  (custom-save-all))
		(let ((w (get-buffer-window "*GNU Emacs*")))
		  (and w (not (one-window-p)) (delete-window w)))
		(kill-buffer "*GNU Emacs*")))
     "  ")
    (when (or user-init-file custom-file)
      (let ((checked (create-image "checked.xpm"
				   nil nil :ascent 'center))
	    (unchecked (create-image "unchecked.xpm"
				     nil nil :ascent 'center)))
	(insert-button
	 " "
	 :on-glyph checked
	 :off-glyph unchecked
	 'checked nil 'display unchecked 'follow-link t
	 'action (lambda (button)
		   (if (overlay-get button 'checked)
		       (progn (overlay-put button 'checked nil)
			      (overlay-put button 'display
					   (overlay-get button :off-glyph))
			      (setq startup-screen-inhibit-startup-screen
				    nil))
		     (overlay-put button 'checked t)
		     (overlay-put button 'display
				  (overlay-get button :on-glyph))
		     (setq startup-screen-inhibit-startup-screen t)))))
      (fancy-splash-insert :face '(variable-pitch (:height 0.9))
			   " Never show it again."))))




(defun display-startup-echo-area-message ()
  "Custom startup message in minibuffer."
  (message "Let's make Emacs powerfull. Again."))

;;; core_ui_splash.el ends here

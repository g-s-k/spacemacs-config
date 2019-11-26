(defun spacemacs/run-processing-sketch ()
  "Run Processing sketch"
  (interactive)
  (compile
   (format "processing-java --sketch=%s --run"
           (shell-quote-argument default-directory))))

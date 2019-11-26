(setq processing-packages
      '(
        processing-mode
        processing-snippets
        ))

(defun processing/init-processing-mode ()
  (use-package processing-mode
    :defer t
    :mode (("\\.pde\\'" . processing-mode))
    :init
    (progn
      (setenv "PATH" (concat (getenv "PATH") ":/bin"))
      (setq-default processing-location
                    (concat
                     (file-name-as-directory (exec-path-from-shell-getenv "HOME"))
                     (file-name-as-directory "processing-3.5.3")
                     "processing-java")))
    :config
    (spacemacs/set-leader-keys-for-major-mode 'processing-mode
      "b" 'processing-sketch-build
      "p" 'processing-sketch-present
      "r" 'processing-sketch-run)))

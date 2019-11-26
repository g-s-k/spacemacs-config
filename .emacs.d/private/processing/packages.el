(setq processing-packages
      '(
        processing-mode
        processing-snippets
        ))

(defun processing/init-processing-mode ()
  (use-package processing-mode
    :defer t
    :mode (("\\.pde\\'" . processing-mode))
    :config
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'processing-mode
        "r" 'spacemacs/run-processing-sketch))))

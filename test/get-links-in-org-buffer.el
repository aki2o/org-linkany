(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "get-links-in-org-buffer")
  (expect '("https://github.com/aki2o/emacs-plsense [plsense.el]")
    (let ((org-linkany--org-buffer-link-alist '(("https://github.com/aki2o/emacs-plsense" . "plsense.el"))))
      (org-linkany--get-links-in-org-buffer)))
  )


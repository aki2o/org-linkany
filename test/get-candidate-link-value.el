(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "get-candidate-link-value")
  (expect "https://github.com/aki2o/emacs-plsense"
    (org-linkany/get-candidate-link-value "https://github.com/aki2o/emacs-plsense [plsense.el]"))
  )


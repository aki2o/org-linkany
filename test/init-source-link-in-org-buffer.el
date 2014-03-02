(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "init-source-link-in-org-buffer")
  (expect '((name . "Link in Org Buffer")
            (candidates . org-linkany--get-links-in-org-buffer)
            (candidate-number-limit . 77))
    (let ((org-linkany/collect-url-number-limit 77)
          (org-linkany/source-link-in-org-buffer nil))
      (org-linkany--init-source-link-in-org-buffer)
      org-linkany/source-link-in-org-buffer))
  )


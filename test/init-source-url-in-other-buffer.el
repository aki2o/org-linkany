(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "init-source-url-in-other-buffer")
  (expect '((name . "URL in Other Buffer")
            (candidates lambda nil org-linkany--other-buffer-urls)
            (candidate-number-limit . 77))
    (let ((org-linkany/collect-url-number-limit 77)
          (org-linkany/source-url-in-other-buffer nil))
      (org-linkany--init-source-url-in-other-buffer)
      org-linkany/source-url-in-other-buffer))
  )


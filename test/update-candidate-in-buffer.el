(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "update-candidate-in-buffer call org-linkany--seek-link-in-org-buffer")
  (expect (mock (org-linkany--seek-link-in-org-buffer *))
    (let ((testfile (concat default-directory "/sample/test.org")))
      (find-file-noselect testfile)
      (org-linkany--update-candidate-in-buffer)))
  (desc "update-candidate-in-buffer call org-linkany--seek-url-in-other-buffer")
  (expect (mock (org-linkany--seek-url-in-other-buffer *))
    (let ((testfile (concat default-directory "/sample/test.org")))
      (find-file-noselect testfile)
      (org-linkany--update-candidate-in-buffer)))
  (desc "update-candidate-in-buffer not call org-linkany--seek-url-in-other-buffer")
  (expect nil
    (let ((testfile (concat default-directory "/sample/test.org")))
      (stub org-linkany--seek-url-in-other-buffer => (error "hoge"))
      (find-file-noselect testfile)
      (org-linkany--update-candidate-in-buffer t)))
  )


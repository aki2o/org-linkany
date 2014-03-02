(require 'org-linkany)
(require 'el-expectations)

;; 隠されたテキストが取得できない場合があるが、原因不明
;; 加えて、testfileが開かれている状態で実行すれば上手くいくのに、
;; STARTUPにshowallを指定しているが、閉じた状態からだとテストがこける
(expectations
  (desc "seek-link-in-org-buffer")
  (expect '(("mailto:ootsuhiroaki@gmail.com" . "Author")
            ("https://github.com/aki2o/direx-el/tree/tune-up-performance" . "my fork")
            ("https://github.com/m2ym/direx-el/pull/37" . "pull request")
            ("https://github.com/aki2o/yaxception" . "yaxception.el")
            ("https://github.com/aki2o/log4e" . "log4e.el")
            ("https://github.com/aki2o/emacs-plsense" . "plsense.el")
            ("https://github.com/m2ym/direx-el" . "direx.el")
            ("file:image/demo.png" . "demo")
            ("https://github.com/m2ym/direx-el")
            ("https://github.com/aki2o/plsense-direx/blob/master/README-ja.md" . "Japanese"))
    (let ((org-linkany--org-buffer-link-alist nil)
          (testfile (concat default-directory "/sample/test.org")))
      (with-current-buffer (find-file-noselect testfile)
        (org-linkany--seek-link-in-org-buffer))
      org-linkany--org-buffer-link-alist))
  )

;; This is test : http://google.com/


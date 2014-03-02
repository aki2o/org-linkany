(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "seek-url-in-other-buffer")
  (expect '("http://google.com/"
            "https://github.com/aki2o/plsense-direx/blob/master/README-ja.md"
            "https://github.com/m2ym/direx-el"
            "https://github.com/aki2o/emacs-plsense"
            "https://github.com/aki2o/log4e"
            "https://github.com/aki2o/yaxception"
            "https://github.com/m2ym/direx-el/pull/37"
            "https://github.com/aki2o/direx-el/tree/tune-up-performance")
    (let ((org-linkany--other-buffer-urls nil)
          (testfile (concat default-directory "/seek-link-in-org-buffer.el")))
      (with-current-buffer (find-file-noselect testfile)
        (org-linkany--seek-url-in-other-buffer))
      org-linkany--other-buffer-urls))
  )


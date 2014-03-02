(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "get-candidate-mail-part")
  (expect "hogehoge@gmail.com"
    (org-linkany/get-candidate-mail-part "mailto:hogehoge@gmail.com [Author]"))
  )


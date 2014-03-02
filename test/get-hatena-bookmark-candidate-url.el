(require 'org-linkany)
(require 'el-expectations)

(expectations
  (desc "get-hatena-bookmark-candidate-url")
  (expect "http://codeout.hatenablog.com/entry/2014/02/04/210237"
    (let ((testcand "[Emacs][Ruby編集] auto-complete + rsense の代わりに auto-complete + robe をつかう - LGTM [summary:][href:http://codeout.hatenablog.com/entry/2014/02/04/210237]"))
      (org-linkany/get-hatena-bookmark-candidate-url testcand)))
  )


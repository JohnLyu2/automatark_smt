(declare-const X String)
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "pjpoptwql/rlnj\u{a}")))))
(check-sat)

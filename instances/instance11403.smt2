(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in_re X (str.to_re "HXLogOnlyDaemonactivityIterenetFrom:Class\u{a}"))))
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "pjpoptwql/rlnj\u{a}"))))
(check-sat)

(exit)

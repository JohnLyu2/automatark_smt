(declare-const X String)
; emailFrom\x3AUser-Agent\x3AUser-Agent\x3Aselect\x2FGet
(assert (str.in_re X (str.to_re "emailFrom:User-Agent:User-Agent:select/Get\u{a}")))
(check-sat)

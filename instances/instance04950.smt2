(declare-const X String)
; /\/[a-z]{1,4}\x2ehtml\x3f0\x2e[0-9]{15,}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 1 4) (re.range "a" "z")) (str.to_re ".html?0./U\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
(check-sat)

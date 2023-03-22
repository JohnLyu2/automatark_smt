(declare-const X String)
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "\u{9}") (re.range " " "~"))) (str.to_re "/P\u{a}"))))
(check-sat)

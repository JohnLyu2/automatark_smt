(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}"))))
(check-sat)

(exit)

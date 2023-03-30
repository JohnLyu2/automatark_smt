(declare-const X String)
; /^.{9}[^\x03\x0a\x11\x10]/R
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 9 9) re.allchar) (re.union (str.to_re "\u{3}") (str.to_re "\u{a}") (str.to_re "\u{11}") (str.to_re "\u{10}")) (str.to_re "/R\u{a}"))))
(check-sat)

(exit)

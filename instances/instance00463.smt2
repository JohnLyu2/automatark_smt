(declare-const X String)
; ppcdomain\x2Eco\x2EukBasic
(assert (not (str.in_re X (str.to_re "ppcdomain.co.ukBasic\u{a}"))))
(check-sat)

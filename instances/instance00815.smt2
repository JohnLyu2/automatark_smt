(declare-const X String)
; /^\x2F\d{10}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)

(declare-const X String)
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (str.in_re X (re.++ (str.to_re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "/\u{a}"))))
(check-sat)

(exit)

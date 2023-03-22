(declare-const X String)
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (str.in_re X (str.to_re "User-Agent:/tba/From:\u{a}")))
(check-sat)

(declare-const X String)
; IP\d+horoscopefowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.range "0" "9")) (str.to_re "horoscopefowclxccdxn/uxwn.ddy\u{a}")))))
(check-sat)

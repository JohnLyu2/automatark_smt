(declare-const X String)
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.maxifiles.com") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)

(exit)

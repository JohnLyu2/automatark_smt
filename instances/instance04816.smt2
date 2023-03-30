(declare-const X String)
; \x2Frss\d+Host\x3aTCP\x2FAD\x2FULOGNetBusCookie\x3a
(assert (not (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBusCookie:\u{a}")))))
(check-sat)

(exit)

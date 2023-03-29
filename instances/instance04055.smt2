(declare-const X String)
; adfsgecoiwnf\d+Host\x3aTCP\x2FAD\x2FULOGNetBus
(assert (not (str.in_re X (re.++ (str.to_re "adfsgecoiwnf\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBus\u{a}")))))
(check-sat)

(exit)

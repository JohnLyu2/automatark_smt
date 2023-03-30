(declare-const X String)
; www\x2Ecameup\x2EcomNetTracker
(assert (not (str.in_re X (str.to_re "www.cameup.com\u{13}NetTracker\u{a}"))))
; Points\d+Host\x3a\dBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Basicwww.webcruiser.cc\u{a}")))))
(check-sat)

(exit)

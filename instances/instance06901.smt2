(declare-const X String)
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}")))
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to_re "Server") (re.* re.allchar) (str.to_re "www.cameup.com\u{13}\u{a}")))))
(check-sat)

(exit)

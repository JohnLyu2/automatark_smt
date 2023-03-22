(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}")))))
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (not (str.in_re X (re.++ (str.to_re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY\u{a}")))))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (not (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "iufilfwulmfi/riuf.lio\u{a}")))))
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "OSSProxy") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}backtrust.com\u{a}")))))
(check-sat)

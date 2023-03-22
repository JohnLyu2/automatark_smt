(declare-const X String)
; Send=\s+User-Agent\x3A\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2Fbacktrust\x2Ecomv\x2ELoginHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:/products/spyblocs/\u{13}backtrust.comv.LoginHost:\u{a}")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}")))))
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (str.in_re X (str.to_re "<logs@dummyserver.com>\u{a}")))
(check-sat)

(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}")))))
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}")))
; Host\x3A.*c=[^\n\r]*KeyloggerHost\x3Awww\.trackhits\.cc
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "c=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerHost:www.trackhits.cc\u{a}"))))
(check-sat)

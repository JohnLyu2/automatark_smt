(declare-const X String)
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "NetTracker") (re.* re.allchar) (str.to_re "Theef2") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "versionA-311Subject:www.pcsentinelsoftware.com\u{a}")))))
(check-sat)

(exit)

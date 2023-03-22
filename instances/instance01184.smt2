(declare-const X String)
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Arrow") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "whenu.com\u{13}\u{a}")))))
(check-sat)

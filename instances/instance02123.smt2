(declare-const X String)
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "httphost") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "www.maxifiles.com\u{a}"))))
(check-sat)

(exit)

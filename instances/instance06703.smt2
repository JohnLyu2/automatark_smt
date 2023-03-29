(declare-const X String)
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "CREATE") (str.to_re "ALTER")) (re.+ (str.to_re " ")) (re.union (str.to_re "PROCEDURE") (str.to_re "PROC") (str.to_re "FUNCTION") (str.to_re "VIEW")) (re.* (str.to_re " ")) (re.union (re.++ (str.to_re "[") (re.* re.allchar) (str.to_re "]")) (re.* re.allchar)) (str.to_re "\u{a}")))))
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "httphost") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "www.maxifiles.com\u{a}"))))
(check-sat)

(exit)

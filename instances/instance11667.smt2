(declare-const X String)
; ^(.*)
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}"))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eye") (re.* re.allchar) (str.to_re "http://supremetoolbar\u{a}"))))
; ^[A-Z]$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (str.to_re "\u{a}")))))
; Host\x3A\s+www\x2Eyoogee\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}\u{a}"))))
(check-sat)

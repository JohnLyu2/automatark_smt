(declare-const X String)
; st=\s+www\.iggsey\.com.*BackAtTaCkadserver\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.iggsey.com") (re.* re.allchar) (str.to_re "BackAtTaCkadserver.warezclient.com\u{a}")))))
(check-sat)

(exit)

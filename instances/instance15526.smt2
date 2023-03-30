(declare-const X String)
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "/cbn/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:binde2give.com\u{a}")))))
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}")))
(check-sat)

(exit)

(declare-const X String)
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}"))))
(check-sat)

(exit)

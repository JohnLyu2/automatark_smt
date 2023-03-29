(declare-const X String)
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\u{a}")))))
(check-sat)

(exit)

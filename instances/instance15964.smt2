(declare-const X String)
; /\x2emim([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mim") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{a}")))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (not (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}"))))
; Host\x3Ahjhgquqssq\x2fpjmonHost\x3AHost\x3AA-311byName=Your\+Host\+is\x3A
(assert (not (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}"))))
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\u{a}")))))
(check-sat)

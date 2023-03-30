(declare-const X String)
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}"))))
; Subject\x3a\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BossUser-Agent:SpediaUser-Agent:\u{a}"))))
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\u{a}")))))
; /\&k=\d+($|\&h=)/U
(assert (str.in_re X (re.++ (str.to_re "/&k=") (re.+ (re.range "0" "9")) (str.to_re "&h=/U\u{a}"))))
; ^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; X-Mailer\x3aUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}User-Agent:\u{a}"))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}"))))
(check-sat)

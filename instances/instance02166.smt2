(declare-const X String)
; Toolbar\s+Host\x3A\w+Host\x3AEIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:EIcdpnode=reportUID/ServertoX-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)

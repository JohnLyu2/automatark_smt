(declare-const X String)
; ^([1-9]+)?[02468]$
(assert (str.in_re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (str.to_re "\u{a}"))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}")))
; FTP\s+\x7D\x7BPort\x3A\s+Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; engineResultUser-Agent\x3A
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
(check-sat)

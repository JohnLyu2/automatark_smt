(declare-const X String)
; engineResultUser-Agent\x3A
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspx\u{a}"))))
(check-sat)

(declare-const X String)
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspx\u{a}"))))
(check-sat)

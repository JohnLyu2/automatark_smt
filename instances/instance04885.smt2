(declare-const X String)
; GREAT\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in_re X (re.++ (str.to_re "GREAT") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
(check-sat)

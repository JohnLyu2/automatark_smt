(declare-const X String)
; security\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "security") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)

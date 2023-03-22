(declare-const X String)
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (not (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}"))))
(check-sat)

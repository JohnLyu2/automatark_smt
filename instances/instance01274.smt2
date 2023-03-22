(declare-const X String)
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}")))
(check-sat)

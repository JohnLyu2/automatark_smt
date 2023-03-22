(declare-const X String)
; ProSpywww\x2Eemp3finder\x2Ecomwww
(assert (not (str.in_re X (str.to_re "ProSpywww.emp3finder.comwww\u{a}"))))
(check-sat)

(declare-const X String)
; HANDYHost\x3aHost\x3aHost\x3Ayddznydqir\x2feviGatornewsSoftActivity
(assert (not (str.in_re X (str.to_re "HANDYHost:Host:Host:yddznydqir/eviGatornewsSoftActivity\u{13}\u{a}"))))
; /^[014567d]-/R
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "d")) (str.to_re "-/R\u{a}"))))
(check-sat)

(exit)

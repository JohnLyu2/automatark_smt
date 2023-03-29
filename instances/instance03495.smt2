(declare-const X String)
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (not (str.in_re X (str.to_re "Stealthwww.myarmory.comresultsmaster.com\u{13}\u{a}"))))
(check-sat)

(exit)

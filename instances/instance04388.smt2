(declare-const X String)
; www\x2Eserverlogic3\x2Ecom
(assert (not (str.in_re X (str.to_re "www.serverlogic3.com\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; Shell\x2FFileage\x7D\x7BPort\x3Aupd\x2Elop\x2Ecom
(assert (not (str.in_re X (str.to_re "Shell/Fileage}{Port:upd.lop.com\u{a}"))))
(check-sat)

(exit)

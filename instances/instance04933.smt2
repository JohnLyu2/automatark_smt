(declare-const X String)
; HWPEMycount\x2Eyok\x2Ecom
(assert (not (str.in_re X (str.to_re "HWPEMycount.yok.com\u{a}"))))
(check-sat)

(exit)

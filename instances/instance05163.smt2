(declare-const X String)
; Subject\x3areportGatorNavExcel
(assert (not (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}"))))
(check-sat)

(exit)

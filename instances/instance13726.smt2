(declare-const X String)
; User-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; Subject\x3areportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
(check-sat)

(exit)

(declare-const X String)
; User-Agent\x3AFiltered
(assert (not (str.in_re X (str.to_re "User-Agent:Filtered\u{a}"))))
(check-sat)

(exit)

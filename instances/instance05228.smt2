(declare-const X String)
; User-Agent\x3ADirectory
(assert (str.in_re X (str.to_re "User-Agent:Directory\u{a}")))
(check-sat)

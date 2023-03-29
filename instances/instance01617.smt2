(declare-const X String)
; User-Agent\x3AHost\x3a\x22The
(assert (str.in_re X (str.to_re "User-Agent:Host:\u{22}The\u{a}")))
(check-sat)

(exit)

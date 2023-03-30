(declare-const X String)
; Host\x3APG=SPEEDBARReferer\x3a
(assert (not (str.in_re X (str.to_re "Host:PG=SPEEDBARReferer:\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; User-Agent\x3AServerHost\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:ServerHost:\u{a}"))))
(check-sat)

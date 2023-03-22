(declare-const X String)
; User-Agent\x3Aregister\.aspUser-Agent\x3AHost\x3AcdpView
(assert (str.in_re X (str.to_re "User-Agent:register.aspUser-Agent:Host:cdpView\u{a}")))
(check-sat)

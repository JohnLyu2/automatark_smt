(declare-const X String)
; update\.cgilogstoHost\x3A
(assert (str.in_re X (str.to_re "update.cgilogstoHost:\u{a}")))
(check-sat)

(exit)

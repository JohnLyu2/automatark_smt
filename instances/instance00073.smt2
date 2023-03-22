(declare-const X String)
; sponsor2\.ucmore\.comUser-Agent\x3AUser-Agent\x3A
(assert (str.in_re X (str.to_re "sponsor2.ucmore.comUser-Agent:User-Agent:\u{a}")))
(check-sat)

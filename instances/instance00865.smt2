(declare-const X String)
; deskwizz\x2EcomReportsadblock\x2Elinkz\x2EcomUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "deskwizz.comReportsadblock.linkz.comUser-Agent:\u{a}"))))
(check-sat)

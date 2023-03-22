(declare-const X String)
; User-Agent\x3Aupgrade\x2Eqsrch\x2Einfo
(assert (str.in_re X (str.to_re "User-Agent:upgrade.qsrch.info\u{a}")))
(check-sat)

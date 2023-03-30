(declare-const X String)
; Host\x3A\supgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{a}")))))
(check-sat)

(exit)

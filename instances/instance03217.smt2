(declare-const X String)
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dcww.dmcast.com\u{a}"))))
(check-sat)

(exit)

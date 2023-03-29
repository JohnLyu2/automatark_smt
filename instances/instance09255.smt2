(declare-const X String)
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}")))
; \x2APORT2\x2Acdpnode=Host\x3A
(assert (str.in_re X (str.to_re "*PORT2*cdpnode=Host:\u{a}")))
(check-sat)

(exit)

(declare-const X String)
; horoscope2Cookie\x3adatATTENTION\x3AKontiki
(assert (not (str.in_re X (str.to_re "horoscope2Cookie:datATTENTION:Kontiki\u{a}"))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}")))
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (str.in_re X (str.to_re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\u{a}")))
(check-sat)

(exit)

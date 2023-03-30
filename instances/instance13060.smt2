(declare-const X String)
; engineResultUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}"))))
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in_re X (str.to_re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\u{a}"))))
(check-sat)

(exit)

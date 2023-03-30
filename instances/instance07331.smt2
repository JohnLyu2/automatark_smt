(declare-const X String)
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (str.in_re X (str.to_re "Subject:EnTrYExplorer*PORT2*Host:\u{a}")))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}"))))
(check-sat)

(exit)

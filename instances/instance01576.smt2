(declare-const X String)
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}")))
(check-sat)

(declare-const X String)
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}")))
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in_re X (re.++ (re.+ (str.to_re "(")) (re.* (re.comp (str.to_re ")"))) (re.+ (str.to_re ")")) (str.to_re "\u{a}")))))
(check-sat)

(exit)

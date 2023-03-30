(declare-const X String)
; logsFictionalReporterCookieUser-Agent\x3A
(assert (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}")))
(check-sat)

(exit)

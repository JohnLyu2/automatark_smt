(declare-const X String)
; ToolbarBasedATLRemoteFrom\x3Adcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\u{a}"))))
(check-sat)

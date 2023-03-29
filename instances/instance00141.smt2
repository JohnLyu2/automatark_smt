(declare-const X String)
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (str.in_re X (str.to_re "CMDLoginExciteSubject:downloadfile.org\u{a}")))
(check-sat)

(exit)

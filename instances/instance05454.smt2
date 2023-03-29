(declare-const X String)
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (str.in_re X (str.to_re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\u{a}")))
(check-sat)

(exit)

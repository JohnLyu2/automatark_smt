(declare-const X String)
; Spy\s+toolbar_domain_redirect
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirect\u{a}")))))
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (str.in_re X (str.to_re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\u{a}")))
(check-sat)

(exit)

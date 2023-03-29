(declare-const X String)
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (str.in_re X (str.to_re "mPOPUser-Agent:gotS:Users\u{5c}PORT=HXLogOnlyMGS-Internal-Web-Manager\u{a}")))
(check-sat)

(exit)

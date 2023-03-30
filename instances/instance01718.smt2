(declare-const X String)
; Logtraffbest\x2EbizAdToolsLogged
(assert (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}")))
(check-sat)

(exit)

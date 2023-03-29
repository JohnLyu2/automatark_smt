(declare-const X String)
; Logtraffbest\x2EbizAdToolsLogged
(assert (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}")))
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}fromReferer:search.conduit.com/dss/cc.2_0_0.\u{a}")))
; (\\.|[^"])*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

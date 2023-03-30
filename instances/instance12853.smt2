(declare-const X String)
; /\x2f[A-F0-9]{158}/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}")))
(check-sat)

(exit)

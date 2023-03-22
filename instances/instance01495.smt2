(declare-const X String)
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (not (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}"))))
(check-sat)

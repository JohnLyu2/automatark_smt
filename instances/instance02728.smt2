(declare-const X String)
; e2give\.com.*Redirector\x22.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)

(declare-const X String)
; e2give\.com.*Host\x3A.*Host\x3a
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
(check-sat)

(declare-const X String)
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "YAHOO") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/cs/pop4/\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "YAHOO") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/cs/pop4/\u{a}")))))
; /^\/[a-f0-9]{8}\.js\?cp\x3d/Umi
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".js?cp=/Umi\u{a}")))))
(check-sat)

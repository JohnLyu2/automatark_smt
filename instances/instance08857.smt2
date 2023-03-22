(declare-const X String)
; ^(0)$|^([1-9][0-9]*)$
(assert (str.in_re X (re.union (str.to_re "0") (re.++ (str.to_re "\u{a}") (re.range "1" "9") (re.* (re.range "0" "9"))))))
; EFError.*\x2Fcs\x2Fpop4\x2F[^\n\r]*
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; User-Agent\x3AFiltered
(assert (str.in_re X (str.to_re "User-Agent:Filtered\u{a}")))
; \x2FNFO\x2CRegistered.*Host\x3A\s+TPSystemHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "/NFO,Registered") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:\u{a}")))))
(check-sat)

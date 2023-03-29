(declare-const X String)
; Host\x3A\w+Toolbar\d+anHost\x3AspasHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "anHost:spasHost:\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "anHost:spasHost:\u{a}"))))
; /\x5f\w{24}\.exe/Pi
(assert (str.in_re X (re.++ (str.to_re "/_") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".exe/Pi\u{a}"))))
(check-sat)

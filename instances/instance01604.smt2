(declare-const X String)
; ovpl\w+UBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "UBAgent%3fSchwindlerurl=Host:httpUser-Agent:\u{a}")))))
(check-sat)

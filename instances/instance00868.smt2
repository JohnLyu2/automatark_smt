(declare-const X String)
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\x2fci
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:rprpgbnrppb/ci\u{a}"))))
(check-sat)

(declare-const X String)
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci\u{a}")))))
(check-sat)

(exit)

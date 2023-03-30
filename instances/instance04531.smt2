(declare-const X String)
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}"))))
(check-sat)

(exit)

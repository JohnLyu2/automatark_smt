(declare-const X String)
; \x7D\x7BTrojan\x3A\w+by\d+toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{a}"))))
(check-sat)

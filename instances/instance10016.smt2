(declare-const X String)
; offers\x2Ebullseye-network\x2Ecom[^\n\r]*this\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "offers.bullseye-network.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "this") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}")))))
; ^\{([1-9]{1}|[1-9]{1}[0-9]{1,}){1}\}\{([1-9]{1}|[1-9]{1}[0-9]{1,}){1}\}(.*)$
(assert (str.in_re X (re.++ (str.to_re "{") ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.+ (re.range "0" "9"))))) (str.to_re "}{") ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.+ (re.range "0" "9"))))) (str.to_re "}") (re.* re.allchar) (str.to_re "\u{a}"))))
; toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (not (str.in_re X (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{a}"))))
(check-sat)

(exit)

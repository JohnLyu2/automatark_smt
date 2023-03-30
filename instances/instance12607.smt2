(declare-const X String)
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}|[0][7][7]-\d{7}|[0][2]-\d{7}|[0][3]-\d{7}|[0][4]-\d{7}|[0][8]-\d{7}|[0][9]-\d{7}|[0][5][0]\d{7}|[0][5][2]\d{7}|[0][5][4]\d{7}|[0][5][7]\d{7}|[0][7][7]\d{7}|[0][2]\d{7}|[0][3]\d{7}|[0][4]\d{7}|[0][8]\d{7}|[0][9]\d{7}$
(assert (str.in_re X (re.union (re.++ (str.to_re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "050") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
; toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (str.in_re X (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{a}")))
; [0-9]{4}\s*[a-zA-Z]{2}
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; <!*[^<>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (str.to_re "!")) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)

(exit)

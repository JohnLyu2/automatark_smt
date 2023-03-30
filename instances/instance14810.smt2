(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Everyware") (re.* re.allchar) (str.to_re "Email") (re.* re.allchar) (str.to_re "Host:stepwww.kornputers.com\u{a}")))))
; /\x2eru\/\w+\?\d$/miU
(assert (not (str.in_re X (re.++ (str.to_re "/.ru/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "?") (re.range "0" "9") (str.to_re "/miU\u{a}")))))
; ^(A[A-HJ-M]|[BR][A-Y]|C[A-HJ-PR-V]|[EMOV][A-Y]|G[A-HJ-O]|[DFHKLPSWY][A-HJ-PR-Y]|MAN|N[A-EGHJ-PR-Y]|X[A-F]|)(0[02-9]|[1-9][0-9])[A-HJ-P-R-Z]{3}$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to_re "B") (str.to_re "R")) (re.range "A" "Y")) (re.++ (str.to_re "C") (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "V"))) (re.++ (re.union (str.to_re "E") (str.to_re "M") (str.to_re "O") (str.to_re "V")) (re.range "A" "Y")) (re.++ (str.to_re "G") (re.union (re.range "A" "H") (re.range "J" "O"))) (re.++ (re.union (str.to_re "D") (str.to_re "F") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "P") (str.to_re "S") (str.to_re "W") (str.to_re "Y")) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y"))) (str.to_re "MAN") (re.++ (str.to_re "N") (re.union (re.range "A" "E") (str.to_re "G") (str.to_re "H") (re.range "J" "P") (re.range "R" "Y"))) (re.++ (str.to_re "X") (re.range "A" "F"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (str.to_re "-") (re.range "R" "Z"))) (str.to_re "\u{a}"))))
; [1-8][0-9]{2}[0-9]{5}
(assert (str.in_re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^([A-Z]+[a-zA-Z]*)(\s|\-)?([A-Z]+[a-zA-Z]*)?(\s|\-)?([A-Z]+[a-zA-Z]*)?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}") (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z")))))))
(check-sat)

(exit)

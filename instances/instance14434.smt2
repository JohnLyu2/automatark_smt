(declare-const X String)
; ^[A-Z0-9]{8}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{12}$
(assert (not (str.in_re X (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; .*[\$Ss]pecia[l1]\W[Oo0]ffer.*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "$") (str.to_re "S") (str.to_re "s")) (str.to_re "pecia") (re.union (str.to_re "l") (str.to_re "1")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re "O") (str.to_re "o") (str.to_re "0")) (str.to_re "ffer") (re.* re.allchar) (str.to_re "\u{a}")))))
; www\x2eurlblaze\x2enetCurrentHost\x3A
(assert (not (str.in_re X (str.to_re "www.urlblaze.netCurrentHost:\u{a}"))))
; ^\€?(\d{1,3}[.](\d{3}[.])*\d{3}|\d+)([,]\d{1,2})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "\u{20ac}")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; ^\d{2}(\x2e)(\d{3})(-\d{3})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; Host\x3A\s+Eyewww\x2Eccnnlc\x2EcomHost\x3aHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eyewww.ccnnlc.com\u{13}Host:Host:\u{a}")))))
; ^([1-9]\d{3}|0[1-9]\d{2}|00[1-9]\d{1}|000[1-9]{1})$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "00") (re.range "1" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "000") ((_ re.loop 1 1) (re.range "1" "9")))) (str.to_re "\u{a}")))))
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&tq=/smiU\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; ^[-+]?\d*$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; twfofrfzlugq\x2feve\.qd\d+
(assert (not (str.in_re X (re.++ (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\x2Fmrow\x5Fpin\x2F\x3Fid\d+[a-z]{5,}\d{5}\x26rnd\x3D\d+/smi
(assert (str.in_re X (re.++ (str.to_re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "&rnd=") (re.+ (re.range "0" "9")) (str.to_re "/smi\u{a}") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z")))))
(check-sat)

(exit)

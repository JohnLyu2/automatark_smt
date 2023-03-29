(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Everyware") (re.* re.allchar) (str.to_re "Email") (re.* re.allchar) (str.to_re "Host:stepwww.kornputers.com\u{a}")))))
; ^0(6[045679][0469]){1}(\-)?(1)?[^0\D]{1}\d{6}$
(assert (not (str.in_re X (re.++ (str.to_re "0") ((_ re.loop 1 1) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "6") (str.to_re "9")))) (re.opt (str.to_re "-")) (re.opt (str.to_re "1")) ((_ re.loop 1 1) (re.union (str.to_re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (not (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.* re.allchar) (str.to_re "SOAPAction:") (re.* re.allchar) (str.to_re "adfsgecoiwnf\u{1b}Host:?search=\u{a}")))))
(check-sat)

(exit)

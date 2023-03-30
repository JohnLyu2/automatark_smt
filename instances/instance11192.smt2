(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tif/i\u{a}"))))
; /\x3Fp\x3D[0-9]{1,10}\x26d\x3D/U
(assert (not (str.in_re X (re.++ (str.to_re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re "&d=/U\u{a}")))))
; ^([0-9]{1}[\d]{0,2}(\,[\d]{3})*(\,[\d]{0,2})?|[0-9]{1}[\d]{0,}(\,[\d]{0,2})?|0(\,[\d]{0,2})?|(\,[\d]{1,2})?)$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smil/i\u{a}")))))
(check-sat)

(exit)

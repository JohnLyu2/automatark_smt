(declare-const X String)
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (str.in_re X (re.++ (str.to_re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to_re "."))) (re.range "0" "9") (str.to_re "\u{d}\u{a}/\u{a}"))))
; ^[ 1(]{0,3}?([02-9][0-9]{2})\D{0,2}([0-9]{3})\D?([0-9]{4})($|\D+.+$)
(assert (str.in_re X (re.++ ((_ re.loop 0 3) (re.union (str.to_re " ") (str.to_re "1") (str.to_re "("))) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}") (re.union (str.to_re "0") (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.+ (re.comp (re.range "0" "9"))) (re.+ re.allchar))))
; on\dstepwww\x2Ekornputers\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "on") (re.range "0" "9") (str.to_re "stepwww.kornputers.com\u{a}"))))
(check-sat)

(exit)

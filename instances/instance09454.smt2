(declare-const X String)
; 9[0-9]
(assert (str.in_re X (re.++ (str.to_re "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (str.in_re X (re.++ (str.to_re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb\u{a}"))))
; (\d{1,2})\W+(\d{1,2})\W*(\d{2,4})?|(\d{4})\W(\d{1,2})\W(\d{1,2})|([a-zA-Z]+)\W*(\d{1,2})\W+(\d{2,4})|(\d{4})\W*([a-zA-Z]+)\W*(\d{1,2})|(\d{1,2})\W*([a-zA-Z]+)\W*(\d{2,4})|(\d{1,2})\W*([a-zA-Z]+)|([a-zA-Z]+)\W*(\d{1,2})|(\d{2})(\d{2})(\d{2,4})?
(assert (str.in_re X (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.opt ((_ re.loop 2 4) (re.range "0" "9")))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 1 2) (re.range "0" "9")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt ((_ re.loop 2 4) (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)

(declare-const X String)
; /^(https?|ftp)(:\/\/)(([\w]{3,}\.[\w]+\.[\w]{2,6})|([\d]{3}\.[\d]{1,3}\.[\d]{3}\.[\d]{1,3}))(\:[0,9]+)*(\/?$|((\/[\w\W]+)+\.[\w]{3,4})?$)/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (re.++ (str.to_re "http") (re.opt (str.to_re "s"))) (str.to_re "ftp")) (str.to_re "://") (re.union (re.++ (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 6) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))) (re.* (re.++ (str.to_re ":") (re.+ (re.union (str.to_re "0") (str.to_re ",") (str.to_re "9"))))) (re.union (re.opt (str.to_re "/")) (re.opt (re.++ (re.+ (re.++ (str.to_re "/") (re.+ (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") ((_ re.loop 3 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))) (str.to_re "/\u{a}")))))
(check-sat)

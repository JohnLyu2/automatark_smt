(declare-const X String)
; ^(http(s?):\/\/)(www.)?(\w|-)+(\.(\w|-)+)*((\.[a-zA-Z]{2,3})|\.(aero|coop|info|museum|name))+(\/)?$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "www") re.allchar)) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.+ (re.union (re.++ (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to_re ".") (re.union (str.to_re "aero") (str.to_re "coop") (str.to_re "info") (str.to_re "museum") (str.to_re "name"))))) (re.opt (str.to_re "/")) (str.to_re "\u{a}http") (re.opt (str.to_re "s")) (str.to_re "://"))))
; ^\$?\-?([1-9]{1}[0-9]{0,2}(\,\d{3})*(\.\d{0,2})?|[1-9]{1}\d{0,}(\.\d{0,2})?|0(\.\d{0,2})?|(\.\d{1,2}))$|^\-?\$?([1-9]{1}\d{0,2}(\,\d{3})*(\.\d{0,2})?|[1-9]{1}\d{0,}(\.\d{0,2})?|0(\.\d{0,2})?|(\.\d{1,2}))$|^\(\$?([1-9]{1}\d{0,2}(\,\d{3})*(\.\d{0,2})?|[1-9]{1}\d{0,}(\.\d{0,2})?|0(\.\d{0,2})?|(\.\d{1,2}))\)$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "$")) (re.opt (str.to_re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "-")) (re.opt (str.to_re "$")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to_re "(") (re.opt (str.to_re "$")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ")\u{a}"))))))
; ^0?(5[024])(\-)?\d{7}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}5") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4"))))))
(check-sat)

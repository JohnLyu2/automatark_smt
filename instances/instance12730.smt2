(declare-const X String)
; User-Agent\x3A\s+ocllceclbhs\x2fgth.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
; ((EE|EL|DE|PT)-?)?[0-9]{9}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "EE") (str.to_re "EL") (str.to_re "DE") (str.to_re "PT")) (re.opt (str.to_re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^(ht|f)tp(s?)\:\/\/[a-zA-Z0-9\-\._]+(\.[a-zA-Z0-9\-\._]+){2,}(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&%\$#_]*)?$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_"))) (re.opt (str.to_re "/")) (re.opt (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "?") (str.to_re ",") (str.to_re "'") (str.to_re "/") (str.to_re "\u{5c}") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "_")))) (str.to_re "\u{a}") ((_ re.loop 2 2) (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_"))))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_")))))))))
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.+ (re.union (str.to_re "\u{22}") (str.to_re " ") (str.to_re "'") (str.to_re "#") (str.to_re "*") (str.to_re "=") (str.to_re ",") (str.to_re ".") (str.to_re "\u{5c}") (str.to_re "(") (str.to_re ")") (str.to_re "/") (str.to_re "-") (str.to_re "$") (str.to_re "{") (str.to_re "}") (str.to_re "[") (str.to_re "]") (str.to_re "|") (str.to_re "?") (str.to_re "+") (str.to_re "^") (str.to_re "&") (str.to_re ":") (str.to_re "%") (str.to_re ";") (str.to_re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">\u{a}")))))
(check-sat)

(exit)

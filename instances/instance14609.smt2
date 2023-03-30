(declare-const X String)
; /^\x2f[A-Za-z0-9+~=]{16,17}\x2f[A-Za-z0-9+~=]{35,40}\x2f[A-Za-z0-9+~=]{8}\x2f[A-Za-z0-9+~=]*?\x2f[A-Za-z0-9+~=]{12,30}$/I
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 16 17) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 35 40) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 12 30) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/I\u{a}"))))
; ([A-Za-z]{0,}[\.\,\s]{0,}[A-Za-z]{1,}[\.\s]{1,}[0-9]{1,2}[\,\s]{0,}[0-9]{4})| ([0-9]{0,4}[-,\s]{0,}[A-Za-z]{3,9}[-,\s]{0,}[0-9]{1,2}[-,\s]{0,}[A-Za-z]{0,8})| ([0-9]{1,4}[\/\.\-][0-9]{1,4}[\/\.\-][0-9]{1,4})
(assert (not (str.in_re X (re.union (re.++ (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re ".") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re " ") ((_ re.loop 0 4) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 0 8) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re " \u{a}") ((_ re.loop 1 4) (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) ((_ re.loop 1 4) (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) ((_ re.loop 1 4) (re.range "0" "9")))))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.altnet.com\u{1b}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; ^([A-Z]{3}\s?(\d{3}|\d{2}|d{1})\s?[A-Z])|([A-Z]\s?(\d{3}|\d{2}|\d{1})\s?[A-Z]{3})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "d"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.range "A" "Z")) (re.++ (str.to_re "\u{a}") (re.range "A" "Z") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "A" "Z")))))))
; /filename=[^\n]*\x2ek3g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".k3g/i\u{a}"))))
; /^\x2f[A-Za-z0-9+~=]{16,17}\x2f[A-Za-z0-9+~=]{35,40}\x2f[A-Za-z0-9+~=]{8}\x2f[A-Za-z0-9+~=]*?\x2f[A-Za-z0-9+~=]{12,30}$/I
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 16 17) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 35 40) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 12 30) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/I\u{a}")))))
; \$(\d)*\d
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)

(exit)

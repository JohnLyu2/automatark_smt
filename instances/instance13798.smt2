(declare-const X String)
; ^(NAME)(\s?)<?(\w*)(\s*)([0-9]*)>?$
(assert (str.in_re X (re.++ (str.to_re "NAME") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "<")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ">")) (str.to_re "\u{a}"))))
; (^\$(\d{1,3},?(\d{3},?)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{2})?)$|^\d{1,2}(\.\d{1,2})? *%$|^100%$)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ",")) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to_re " ")) (str.to_re "%")) (str.to_re "100%")) (str.to_re "\u{a}"))))
(check-sat)

(exit)

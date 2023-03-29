(declare-const X String)
; /\.addAnnot\s*\x28[^\x29]*?points\s*\x3a\s*0/i
(assert (str.in_re X (re.++ (str.to_re "/.addAnnot") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ")"))) (str.to_re "points") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "0/i\u{a}"))))
; ^[0-9]{3}[-|/]{1}[0-9]{6}[-|/]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^\€?(\d{1,3}[.](\d{3}[.])*\d{3}|\d+)([,]\d{1,2})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "\u{20ac}")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; @"^\d[a-zA-Z0-9]+$"
(assert (not (str.in_re X (re.++ (str.to_re "@\u{22}") (re.range "0" "9") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{22}\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; ^(\+?)(\d{2,4})(\s?)(\-?)((\(0\))?)(\s?)(\d{2})(\s?)(\-?)(\d{3})(\s?)(\-?)(\d{2})(\s?)(\-?)(\d{2})
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (str.to_re "(0)")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^[0-9]{4}\s{0,1}[a-zA-Z]{2}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
; ^(\$)?(\s)?(\-)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{a}")))))
; url=\"([^\[\]\"]*)\"
(assert (not (str.in_re X (re.++ (str.to_re "url=\u{22}") (re.* (re.union (str.to_re "[") (str.to_re "]") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}")))))
(check-sat)

(exit)

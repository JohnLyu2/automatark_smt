(declare-const X String)
; ^(\+(1\-)?\d{1,3})?(\s|\-)?(\s|\-)?((\(\d{2}\)|\d{2})(\s|\-)?\d{4}|(\(\d{3}\)|\d{3})(\s|\-)?\d{3})(\s|\-)?\d{4}(\s)?(x|ext|ext.)?(\d{1,6})?,?(\d{1,6})?,?(\d{1,6})?$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") (re.opt (str.to_re "1-")) ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.union (re.++ (str.to_re "(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "x") (str.to_re "ext") (re.++ (str.to_re "ext") re.allchar))) (re.opt ((_ re.loop 1 6) (re.range "0" "9"))) (re.opt (str.to_re ",")) (re.opt ((_ re.loop 1 6) (re.range "0" "9"))) (re.opt (str.to_re ",")) (re.opt ((_ re.loop 1 6) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{a}"))))
; ^\d*[0-9](\.\d?[0-9])?$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.opt (re.range "0" "9")) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ^[A-Z]{1}( |-)?[1-9]{1}[0-9]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)

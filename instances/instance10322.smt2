(declare-const X String)
; (((^[>]?1.0)(\d)?(\d)?)|(^[<]?1.0(([1-9])|(\d[1-9])|([1-9]\d)))|(^[<]?1.4(0)?(0)?)|(^[<>]?1.(([123])(\d)?(\d)?)))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to_re ">")) (str.to_re "1") re.allchar (str.to_re "0")) (re.++ (re.opt (str.to_re "<")) (str.to_re "1") re.allchar (str.to_re "0") (re.union (re.range "1" "9") (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "<")) (str.to_re "1") re.allchar (str.to_re "4") (re.opt (str.to_re "0")) (re.opt (str.to_re "0"))) (re.++ (re.opt (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re "1") re.allchar (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /<\s*col[^>]*width\s*=\s*[\x22\x27]?\d{7}/i
(assert (str.in_re X (re.++ (str.to_re "/<") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "col") (re.* (re.comp (str.to_re ">"))) (str.to_re "width") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "/i\u{a}"))))
(check-sat)

(exit)

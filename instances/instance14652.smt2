(declare-const X String)
; (vi(v))?d
(assert (str.in_re X (re.++ (re.opt (str.to_re "viv")) (str.to_re "d\u{a}"))))
; ^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.pdf)$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.+ (re.++ (str.to_re "\u{5c}") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* re.allchar))) (str.to_re "\u{a}") re.allchar (str.to_re "pdf"))))
(check-sat)

(declare-const X String)
; ((\d{1,6}\-\d{1,6})|(\d{1,6}\\\d{1,6})|(\d{1,6})(\/)(\d{1,6})|(\w{1}\-?\d{1,6})|(\w{1}\s\d{1,6})|((P\.?O\.?\s)((BOX)|(Box))(\s\d{1,6}))|((([R]{2})|([H][C]))(\s\d{1,6}\s)((BOX)|(Box))(\s\d{1,6}))?)$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "\u{5c}") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re "-")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.union (str.to_re "BOX") (str.to_re "Box")) (str.to_re "P") (re.opt (str.to_re ".")) (str.to_re "O") (re.opt (str.to_re ".")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.opt (re.++ (re.union ((_ re.loop 2 2) (str.to_re "R")) (str.to_re "HC")) (re.union (str.to_re "BOX") (str.to_re "Box")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 6) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 6) (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\x3d[a-zA-Z0-9\x2f\x2b]+\x3d$/I
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to_re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to_re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "+"))) (str.to_re "=/I\u{a}")))))
; /^(Frame)?\.jsf/R
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.opt (str.to_re "Frame")) (str.to_re ".jsf/R\u{a}")))))
(check-sat)

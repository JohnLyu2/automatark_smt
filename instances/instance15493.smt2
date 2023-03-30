(declare-const X String)
; /^\x2fnosignal\.jpg\?\d\.\d+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//nosignal.jpg?") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; ([0-1][0-9]|2[0-3]):[0-5][0-9]
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (str.to_re "\u{a}")))))
; /\x2eses([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.ses") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)

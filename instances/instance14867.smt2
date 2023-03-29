(declare-const X String)
; User-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; ^(([0-9]|1[0-9]|2[0-4])(\.[0-9][0-9]?)?)$|([2][5](\.[0][0]?)?)$
(assert (str.in_re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to_re "\u{a}25") (re.opt (re.++ (str.to_re ".0") (re.opt (str.to_re "0"))))))))
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (str.in_re X (re.++ (str.to_re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to_re "TM_SEARCH3engineto=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":\u{a}"))))
; /\x0d\x0aHost\x3a\x20[^\x0d\x0a\x2e]+\x2e[^\x0d\x0a\x2e]+(\x3a\d{1,5})?\x0d\x0a\x0d\x0a$/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Host: ") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "."))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "\u{d}\u{a}\u{d}\u{a}/H\u{a}")))))
(check-sat)

(exit)

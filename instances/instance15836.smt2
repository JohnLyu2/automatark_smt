(declare-const X String)
; quick\x2Eqsrch\x2Ecom\s+WinSession\s+Server\x00
(assert (str.in_re X (re.++ (str.to_re "quick.qsrch.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WinSession") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server\u{0}\u{a}"))))
; /^GET \x2F3010[0-9A-F]{166}00000001/
(assert (not (str.in_re X (re.++ (str.to_re "/GET /3010") ((_ re.loop 166 166) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "00000001/\u{a}")))))
; /\x2eabc([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.abc") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^(([a-zA-Z][a-zA-Z_$0-9]*(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.)?([a-zA-Z][a-zA-Z_$0-9]*)$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "$") (re.range "0" "9"))) (re.* (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "$") (re.range "0" "9"))))))) (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "$") (re.range "0" "9")))))))
(check-sat)

(declare-const X String)
; /^sleep\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in_re X (re.++ (str.to_re "/sleep|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}")))))
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "D") (str.to_re "J") (str.to_re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+GETwww\x2Eoemji\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GETwww.oemji.com\u{a}"))))
(check-sat)

(exit)

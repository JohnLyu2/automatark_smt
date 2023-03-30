(declare-const X String)
; /\x2esami([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.sami") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "\u{a}")))))
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (str.to_re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\u{a}"))))
(check-sat)

(exit)

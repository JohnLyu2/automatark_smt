(declare-const X String)
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in_re X (re.++ (re.+ (str.to_re "(")) (re.* (re.comp (str.to_re ")"))) (re.+ (str.to_re ")")) (str.to_re "\u{a}")))))
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.htc") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\x2f[A-F0-9]{158}/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)

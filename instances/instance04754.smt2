(declare-const X String)
; /\x2edvr-ms([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.dvr-ms") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)

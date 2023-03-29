(declare-const X String)
; \x2FcommunicatortbHost\x3a
(assert (not (str.in_re X (str.to_re "/communicatortbHost:\u{a}"))))
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.p2g") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.j2k") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)

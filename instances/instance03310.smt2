(declare-const X String)
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.cis") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

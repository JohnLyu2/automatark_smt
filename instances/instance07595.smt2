(declare-const X String)
; /\x2emotn([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.motn") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Points\d+Host\x3a\stoBasicwww\x2Ewebcruiser\x2Ecc
(assert (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toBasicwww.webcruiser.cc\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (str.in_re X (re.++ (str.to_re "XP") (re.+ (re.range "0" "9")) (str.to_re "Acme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=versionContact\u{a}"))))
; /\x2em4v([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4v") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

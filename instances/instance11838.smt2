(declare-const X String)
; /\.addAnnot\s*\x28[^\x29]*?points\s*\x3a\s*0/i
(assert (str.in_re X (re.++ (str.to_re "/.addAnnot") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ")"))) (str.to_re "points") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "0/i\u{a}"))))
; /\x2eogv([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ogv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)

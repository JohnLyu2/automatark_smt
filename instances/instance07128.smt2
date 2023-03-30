(declare-const X String)
; /\x2ejnlp([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jnlp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{a}"))))
(check-sat)

(exit)

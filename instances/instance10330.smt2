(declare-const X String)
; /\/jorg\.html$/U
(assert (not (str.in_re X (str.to_re "//jorg.html/U\u{a}"))))
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in_re X (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{a}"))))
; /\x2ewrf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wrf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^\d+((\.|\,)\d+)?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

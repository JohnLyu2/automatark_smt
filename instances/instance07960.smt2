(declare-const X String)
; \x2Fbar_pl\x2Fchk\.fcgiHWAEcom\x2Findex\.php\?tpid=
(assert (str.in_re X (str.to_re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\u{a}")))
; ((\bm_[a-zA-Z\d]*\b)|(\bin_[a-zA-Z\d]*\b)|(\bin _[a-zA-Z\d]*\b))
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "m_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "in_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "in _") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; ^[a-zA-Z0-9\s]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; /\x2ecrx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.crx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

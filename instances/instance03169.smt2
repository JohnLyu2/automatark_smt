(declare-const X String)
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (not (str.in_re X (re.++ (str.to_re "/POST /g") (re.union (str.to_re "a") (str.to_re "o")) (str.to_re "lfstream&/\u{a}")))))
(check-sat)

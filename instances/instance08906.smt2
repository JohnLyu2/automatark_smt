(declare-const X String)
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "u") (str.to_re "-") (str.to_re "/") (str.to_re "s") (str.to_re "\u{a2}") (str.to_re ".") (str.to_re "$") (str.to_re "t")) (str.to_re "/sR\u{a}"))))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (not (str.in_re X (re.++ (str.to_re "/POST /g") (re.union (str.to_re "a") (str.to_re "o")) (str.to_re "lfstream&/\u{a}")))))
(check-sat)

(exit)

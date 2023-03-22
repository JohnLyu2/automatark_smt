(declare-const X String)
; (facebook|twitter|youtube)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "facebook") (str.to_re "twitter") (str.to_re "youtube")) (str.to_re "\u{a}")))))
; \x1f\x8b\x08\x00.+\x00\x00
(assert (not (str.in_re X (re.++ (str.to_re "\u{1f}\u{8b}\u{8}\u{0}") (re.+ re.allchar) (str.to_re "\u{0}\u{0}\u{a}")))))
; /onload\s*\x3D\s*[\x22\x27]?location\.reload\s*\x28/smi
(assert (not (str.in_re X (re.++ (str.to_re "/onload") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "location.reload") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(/smi\u{a}")))))
(check-sat)

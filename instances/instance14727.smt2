(declare-const X String)
; ^[^\\\/\?\*\"\>\<\:\|]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "?") (str.to_re "*") (str.to_re "\u{22}") (str.to_re ">") (str.to_re "<") (str.to_re ":") (str.to_re "|"))) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
(check-sat)

(exit)

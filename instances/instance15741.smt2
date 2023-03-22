(declare-const X String)
; metaresults\.copernic\.comServer\x00
(assert (str.in_re X (str.to_re "metaresults.copernic.comServer\u{0}\u{a}")))
; /\x2exslt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xslt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; xbqyosoe\x2fcpvmdll\x3F
(assert (str.in_re X (str.to_re "xbqyosoe/cpvmdll?\u{a}")))
; User-Agent\x3A\s+community\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^[+-]?[0-9]+$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

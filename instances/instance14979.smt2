(declare-const X String)
; <[ \t]*[iI][mM][gG][ \t]*[sS][rR][cC][ \t]*=[ \t]*['\"]([^'\"]+)
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "g") (str.to_re "G")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.union (str.to_re "s") (str.to_re "S")) (re.union (str.to_re "r") (str.to_re "R")) (re.union (str.to_re "c") (str.to_re "C")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.union (str.to_re "'") (str.to_re "\u{22}")) (re.+ (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re "\u{a}"))))
; ((mailto\:|(news|(ht|f)tp(s?))\://){1}\S+)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 1) (re.union (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://")))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
(check-sat)

(exit)

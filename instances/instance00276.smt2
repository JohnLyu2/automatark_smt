(declare-const X String)
; /\x2edocx([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.docx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)

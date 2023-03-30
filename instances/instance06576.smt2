(declare-const X String)
; /\x2evwr([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.vwr") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x2eppt([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ppt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2emax/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}"))))
(check-sat)

(exit)

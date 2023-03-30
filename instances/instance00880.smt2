(declare-const X String)
; User-Agent\x3A\s+ocllceclbhs\x2fgthNeed2Find
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthNeed2Find\u{a}")))))
(check-sat)

(exit)

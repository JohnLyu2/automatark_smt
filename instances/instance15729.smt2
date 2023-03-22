(declare-const X String)
; /\x2eswf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ConectadoHost\x3aas\.cometsystems\.com
(assert (str.in_re X (str.to_re "ConectadoHost:as.cometsystems.com\u{a}")))
(check-sat)

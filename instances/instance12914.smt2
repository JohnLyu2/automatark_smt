(declare-const X String)
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (str.in_re X (str.to_re "vbwwwc.goclick.compassword;0;Incorrect\u{a}")))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (not (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}"))))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.fli") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\x2eram?([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ra") (re.opt (str.to_re "m")) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

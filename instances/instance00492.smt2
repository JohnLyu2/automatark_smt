(declare-const X String)
; \x28BDLL\x29Googledll\x3F
(assert (str.in_re X (str.to_re "(BDLL)\u{13}Googledll?\u{a}")))
(check-sat)

(exit)

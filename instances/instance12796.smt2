(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in_re X (str.to_re "//stat_u//U\u{a}")))
; \x1f\x8b\x08\x00.+\x00\x00
(assert (not (str.in_re X (re.++ (str.to_re "\u{1f}\u{8b}\u{8}\u{0}") (re.+ re.allchar) (str.to_re "\u{0}\u{0}\u{a}")))))
(check-sat)

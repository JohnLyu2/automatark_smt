(declare-const X String)
; /\x2fblackmuscats?\x3f\d/Ui
(assert (str.in_re X (re.++ (str.to_re "//blackmuscat") (re.opt (str.to_re "s")) (str.to_re "?") (re.range "0" "9") (str.to_re "/Ui\u{a}"))))
(check-sat)

(exit)

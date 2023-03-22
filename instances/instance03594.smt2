(declare-const X String)
; /skillName\x3D\x7B\x28\x23/Ui
(assert (str.in_re X (str.to_re "/skillName={(#/Ui\u{a}")))
(check-sat)

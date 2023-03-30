(declare-const X String)
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (str.in_re X (str.to_re "trustyfiles.comBlade####.smx?\u{a}")))
(check-sat)

(exit)

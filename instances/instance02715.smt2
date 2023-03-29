(declare-const X String)
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}")))
(check-sat)

(exit)

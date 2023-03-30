(declare-const X String)
; Project\x2Eearthlinkshprrprt-cs-
(assert (not (str.in_re X (str.to_re "Project.earthlinkshprrprt-cs-\u{13}\u{a}"))))
(check-sat)

(exit)

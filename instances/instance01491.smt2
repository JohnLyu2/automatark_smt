(declare-const X String)
; Theef2Host\x3AWordcommunityUser-Agent\x3AHost\x3ATPSystemHost\x3AHost\x3APro
(assert (str.in_re X (str.to_re "Theef2Host:WordcommunityUser-Agent:Host:TPSystemHost:Host:Pro\u{a}")))
(check-sat)

(exit)

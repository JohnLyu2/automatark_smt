(declare-const X String)
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
(check-sat)

(exit)

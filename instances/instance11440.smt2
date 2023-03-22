(declare-const X String)
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}")))
; ActMonHost\x3ABossUser-Agent\x3A
(assert (str.in_re X (str.to_re "ActMonHost:BossUser-Agent:\u{a}")))
(check-sat)

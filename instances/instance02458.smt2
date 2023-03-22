(declare-const X String)
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (not (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}"))))
(check-sat)

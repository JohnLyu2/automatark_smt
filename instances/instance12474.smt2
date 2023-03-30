(declare-const X String)
; \x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in_re X (str.to_re "/images/nocache/tr/gca/m.gif?\u{a}"))))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (not (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}"))))
(check-sat)

(exit)

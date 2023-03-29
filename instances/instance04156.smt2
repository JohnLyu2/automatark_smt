(declare-const X String)
; www\x2Eyoogee\x2EcomserverHost\x3Aref\x3D\x25user\x5Fid
(assert (str.in_re X (str.to_re "www.yoogee.com\u{13}serverHost:ref=%user_id\u{a}")))
(check-sat)

(exit)

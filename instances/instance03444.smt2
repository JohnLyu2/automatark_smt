(declare-const X String)
; ServerHost\x3Atid\x3D\x25toolbar\x5Fidcomtrustyfiles\x2Ecom
(assert (not (str.in_re X (str.to_re "ServerHost:tid=%toolbar_idcomtrustyfiles.com\u{a}"))))
(check-sat)

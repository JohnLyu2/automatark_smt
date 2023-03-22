(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}")))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}"))))
(check-sat)

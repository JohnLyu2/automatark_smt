(declare-const X String)
; ^([\s\S]){1,20}([\s\.])
(assert (str.in_re X (re.++ ((_ re.loop 1 20) (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}"))))
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (not (str.in_re X (re.++ (str.to_re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to_re "\u{a}")))))
; kwd\s+User-Agent\x3Aregister\.aspUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "kwd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:register.aspUser-Agent:\u{a}")))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
(check-sat)

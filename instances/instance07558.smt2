(declare-const X String)
; /setup=[a-z]\&s=\d\&r=\d{5}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/setup=") (re.range "a" "z") (str.to_re "&s=") (re.range "0" "9") (str.to_re "&r=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:\u{a}")))))
(check-sat)

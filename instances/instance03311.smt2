(declare-const X String)
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:\u{a}")))))
(check-sat)

(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (not (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}"))))
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:\u{a}"))))
(check-sat)

(exit)

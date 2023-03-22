(declare-const X String)
; Theef2\sHost\x3A\s+User-Agent\x3awww\x2Esogou\x2EcomUser-Agent\x3AMyPostToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Theef2") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:www.sogou.comUser-Agent:MyPostToolbar\u{a}")))))
(check-sat)

(declare-const X String)
; ActMonHost\x3ABossUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "ActMonHost:BossUser-Agent:\u{a}"))))
; (\$(([0-9]?)[a-zA-Z]+)([0-9]?))
(assert (str.in_re X (re.++ (str.to_re "\u{a}$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; Host\x3a[^\n\r]*snprtz\x7Cdialno\s+Agent\s+Host\x3AUser-Agent\x3A\.cfgUser-Agent\x3Axbqyosoe\x2fcpvm
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\u{a}"))))
; /\x2fib2\x2f$/U
(assert (not (str.in_re X (str.to_re "//ib2//U\u{a}"))))
; Host\x3A\s+\x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\x2Ftoolbar\x2Fsupremetb
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetb\u{a}"))))
(check-sat)

(exit)

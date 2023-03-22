(declare-const X String)
; si=\s+ProAgentUI2Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "si=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ProAgentUI2Host:00000www.zhongsou.com\u{a}")))))
(check-sat)

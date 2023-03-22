(declare-const X String)
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mpg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}"))))
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (not (str.in_re X (re.++ (str.to_re "A-311") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Attached") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.comhoroscope2\u{a}")))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.proventactics.com\u{a}")))))
(check-sat)

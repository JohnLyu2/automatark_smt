(declare-const X String)
; Host\x3A\s+CD\x2F\s+twfofrfzlugq\x2feve\.qdSeconds\-\x2Ftoolbar\x2Fsupremetb
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "twfofrfzlugq/eve.qdSeconds-/toolbar/supremetb\u{a}"))))
(check-sat)

(exit)

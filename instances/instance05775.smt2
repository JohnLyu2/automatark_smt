(declare-const X String)
; Host\x3a\s+www\s+Host\x3AHost\x3AIPAsynchaveAdToolszopabora\x2EinfoHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:IPAsynchaveAdToolszopabora.infoHost:\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; TPSystem\s+TencentTraveler\s+www\x2eurlblaze\x2enetCurrentHost\x3AWindows
(assert (str.in_re X (re.++ (str.to_re "TPSystem") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.urlblaze.netCurrentHost:Windows\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (not (str.in_re X (re.++ (str.to_re "uuid=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "\u{5c}home/lordofsearch\u{a}")))))
(check-sat)

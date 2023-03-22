(declare-const X String)
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (str.in_re X (re.++ (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3Awww.urlblaze.netulmxct/mqoyc\u{a}"))))
(check-sat)

(declare-const X String)
; ZC-Bridge\s+www\x2Ewebcruiser\x2Ecc\x22StealthReferer\x3AContact
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webcruiser.cc\u{22}StealthReferer:Contact\u{a}"))))
(check-sat)

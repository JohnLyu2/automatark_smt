(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
; User-Agent\x3aUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; \{\\\*\\bkmkstart\s(.*?)\}
(assert (str.in_re X (re.++ (str.to_re "{\u{5c}*\u{5c}bkmkstart") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* re.allchar) (str.to_re "}\u{a}"))))
(check-sat)

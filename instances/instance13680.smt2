(declare-const X String)
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (not (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "SpyBuddy\u{a}")))))
; Host\x3A\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.comSubject\x3aHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\u{a}")))))
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (not (str.in_re X (str.to_re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\u{d}\u{a}\u{a}"))))
(check-sat)

(exit)

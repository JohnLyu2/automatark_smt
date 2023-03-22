(declare-const X String)
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (not (str.in_re X (str.to_re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\u{d}\u{a}\u{a}"))))
(check-sat)

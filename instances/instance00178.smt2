(declare-const X String)
; zzzvmkituktgr\x2fetie\s+WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (re.++ (str.to_re "zzzvmkituktgr/etie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WindowsAttachedPalas.starware.com/dp/search?x=\u{a}"))))
(check-sat)

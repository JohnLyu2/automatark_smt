(declare-const X String)
; Points\s+newszzzvmkituktgr\x2fetieWatcherUser-Agent\x3Awww\x2Emyarmory\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newszzzvmkituktgr/etieWatcherUser-Agent:www.myarmory.com\u{a}"))))
(check-sat)

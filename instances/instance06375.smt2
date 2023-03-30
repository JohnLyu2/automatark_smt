(declare-const X String)
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "LOG\u{a}"))))
; /\/pdfx\.html$/U
(assert (not (str.in_re X (str.to_re "//pdfx.html/U\u{a}"))))
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}"))))
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}")))
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (str.in_re X (re.++ (str.to_re "Reports") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "largePass-Onseqepagqfphv/sfd\u{a}"))))
(check-sat)

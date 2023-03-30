(declare-const X String)
; Host\x3a.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}")))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}")))
(check-sat)

(exit)

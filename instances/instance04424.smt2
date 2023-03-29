(declare-const X String)
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}"))))
(check-sat)

(exit)

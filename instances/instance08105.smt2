(declare-const X String)
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}")))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (str.in_re X (re.++ (str.to_re "/)\u{d}\u{a}Host: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "\u{d}\u{a}Cache-Control: no-cache\u{d}\u{a}\u{d}\u{a}/\u{a}"))))
(check-sat)

(exit)

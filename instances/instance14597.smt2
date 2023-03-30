(declare-const X String)
; iz=cyber@yahoo\x2EcomSpyBuddyCenterIP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (str.to_re "iz=cyber@yahoo.comSpyBuddyCenterIP-WindowsAttachedPalas.starware.com/dp/search?x=\u{a}")))
; <!*[^<>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (str.to_re "!")) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{a}")))))
(check-sat)

(exit)

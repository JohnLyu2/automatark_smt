(declare-const X String)
; ^http://\\.?video\\.google+\\.\\w{2,3}/videoplay\\?docid=[\\w-]{19}
(assert (str.in_re X (re.++ (str.to_re "http://\u{5c}") (re.opt re.allchar) (str.to_re "video\u{5c}") re.allchar (str.to_re "googl") (re.+ (str.to_re "e")) (str.to_re "\u{5c}") re.allchar (str.to_re "\u{5c}") ((_ re.loop 2 3) (str.to_re "w")) (str.to_re "/videoplay") (re.opt (str.to_re "\u{5c}")) (str.to_re "docid=") ((_ re.loop 19 19) (re.union (str.to_re "\u{5c}") (str.to_re "w") (str.to_re "-"))) (str.to_re "\u{a}"))))
; iz=cyber@yahoo\x2EcomSpyBuddyCenterIP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (str.to_re "iz=cyber@yahoo.comSpyBuddyCenterIP-WindowsAttachedPalas.starware.com/dp/search?x=\u{a}")))
; User-Agent\x3a\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:as.starware.com\u{a}")))))
; ^\([0-9]{3}\)[0-9]{3}(-)[0-9]{4}
(assert (not (str.in_re X (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)

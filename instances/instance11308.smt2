(declare-const X String)
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in_re X (str.to_re "\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax\u{a}"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}"))))
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}"))))
(check-sat)

(exit)

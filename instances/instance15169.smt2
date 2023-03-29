(declare-const X String)
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (not (str.in_re X (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}"))))
; Host\x3A\d+Black\s+daosearch\x2EcomMyPostwww\.raxsearch\.com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{a}")))))
; Client.*Peer\s+ThistoIpHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Client") (re.* re.allchar) (str.to_re "Peer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ThistoIpHost:badurl.grandstreetinteractive.com\u{a}"))))
; DmInf\x5E\s+offers\x2Ebullseye-network\x2Ecomlogfile
(assert (not (str.in_re X (re.++ (str.to_re "DmInf^") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "offers.bullseye-network.comlogfile\u{a}")))))
(check-sat)

(exit)

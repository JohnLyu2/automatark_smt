(declare-const X String)
; log\=\x7BIP\x3AIP-PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "log={IP:IP-PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPalToolbarUser-Agent:\u{a}"))))
; /\x2em4a([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4a") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; pass=Referer\x3ASurveillance
(assert (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}")))
; www\x2Eeblocs\x2Ecomcorep\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "www.eblocs.com\u{1b}corep.dmcast.com\u{a}")))
(check-sat)

(exit)

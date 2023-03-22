(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\u{a}"))))
; /\/jlnp\.html$/U
(assert (not (str.in_re X (str.to_re "//jlnp.html/U\u{a}"))))
; Server\s+www\x2Epeer2mail\x2Ecom.*Subject\x3AReferer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "Subject:Referer:\u{a}")))))
; replace(MobileNo,' ',''),'^(\+44|0044|0)(7)[4-9][0-9]{8}$'
(assert (str.in_re X (re.++ (str.to_re "replaceMobileNo,' ','','") (re.union (str.to_re "+44") (str.to_re "0044") (str.to_re "0")) (str.to_re "7") (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "'\u{a}"))))
(check-sat)

(declare-const X String)
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}"))))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (not (str.in_re X (re.++ (str.to_re "/agent_") (re.union (str.to_re "win") (str.to_re "lin") (str.to_re "mac")) (str.to_re "_helper.jar/siU\u{a}")))))
(check-sat)

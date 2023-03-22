(declare-const X String)
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}")))
(check-sat)

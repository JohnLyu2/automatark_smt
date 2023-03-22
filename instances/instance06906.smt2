(declare-const X String)
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}")))
; /filename=[^\n]*\x2ep2g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".p2g/i\u{a}"))))
(check-sat)

(declare-const X String)
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}")))
; /filename=[^\n]*\x2eafm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".afm/i\u{a}"))))
; /SOAPAction\x3A\s*?\x22[^\x22\x23]+?\x23([^\x22]{2048}|[^\x22]+$)/Hsi
(assert (not (str.in_re X (re.++ (str.to_re "/SOAPAction:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.+ (re.union (str.to_re "\u{22}") (str.to_re "#"))) (str.to_re "#") (re.union ((_ re.loop 2048 2048) (re.comp (str.to_re "\u{22}"))) (re.+ (re.comp (str.to_re "\u{22}")))) (str.to_re "/Hsi\u{a}")))))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
(check-sat)

(exit)

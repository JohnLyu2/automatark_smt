(declare-const X String)
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:\u{a}")))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}"))))
; \b(((\S+)?)(@|mailto\:|(news|(ht|f)tp(s?))\://)\S+)\b
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.union (str.to_re "@") (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://"))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
(check-sat)

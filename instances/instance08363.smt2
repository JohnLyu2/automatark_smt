(declare-const X String)
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}"))))
; 9[0-9]
(assert (str.in_re X (re.++ (str.to_re "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; User-Agent\x3a\sRequestwww\x2Ealtnet\x2EcomSubject\x3A
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Requestwww.altnet.com\u{1b}Subject:\u{a}"))))
(check-sat)

(exit)

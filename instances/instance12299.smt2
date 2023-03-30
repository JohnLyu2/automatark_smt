(declare-const X String)
; connection\sHost\x3aSubject\x3A\.bmp
(assert (not (str.in_re X (re.++ (str.to_re "connection") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Subject:.bmp\u{a}")))))
; LOG\w+PARSER\d+scn\x2emystoretoolbar\x2ecom
(assert (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSER") (re.+ (re.range "0" "9")) (str.to_re "scn.mystoretoolbar.com\u{13}\u{a}"))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (not (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}"))))
; /filename=[^\n]*\x2eani/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ani/i\u{a}")))))
(check-sat)

(exit)

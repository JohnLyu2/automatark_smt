(declare-const X String)
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.range "0" "9") (str.to_re "DA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}")))))
; /filename=[^\n]*\x2eskm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".skm/i\u{a}"))))
; Host\x3Acdpnode=FILESIZE\x3E
(assert (str.in_re X (str.to_re "Host:cdpnode=FILESIZE>\u{13}\u{a}")))
; /filename=[^\n]*\x2ecpe/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}"))))
(check-sat)

(exit)

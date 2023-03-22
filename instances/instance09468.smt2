(declare-const X String)
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}"))))
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.range "0" "9") (str.to_re "DA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}")))))
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (not (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}"))))
(check-sat)

(declare-const X String)
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.range "0" "9") (str.to_re "DA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}"))))
(check-sat)

(exit)

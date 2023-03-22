(declare-const X String)
; security\s+ad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in_re X (re.++ (str.to_re "security") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ad.mokead.com</chat>\u{a}"))))
; 5[12345]\d{14}
(assert (str.in_re X (re.++ (str.to_re "5") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5")) ((_ re.loop 14 14) (re.range "0" "9")) (str.to_re "\u{a}"))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/ezsb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.range "0" "9") (str.to_re "Remotetoolsbar.kuaiso.com\u{a}")))))
(check-sat)

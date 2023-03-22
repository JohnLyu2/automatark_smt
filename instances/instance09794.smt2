(declare-const X String)
; ^([A-Z]{2}?(\d{7}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9"))))))
; Contact\d+Host\x3A\d+MailHost\x3aMSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
(check-sat)

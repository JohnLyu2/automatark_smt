(declare-const X String)
; Contact\d+Host\x3A\d+MailHost\x3aMSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}")))))
(check-sat)

(exit)

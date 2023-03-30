(declare-const X String)
; Contact\d+Host\x3A\d+MailHost\x3aMSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:insertkeys<keys@hotpop\u{a}")))))
; ^([^\.]+).([^\.]+).([^\.]+).([^\.]+)$
(assert (not (str.in_re X (re.++ (re.+ (re.comp (str.to_re "."))) re.allchar (re.+ (re.comp (str.to_re "."))) re.allchar (re.+ (re.comp (str.to_re "."))) re.allchar (re.+ (re.comp (str.to_re "."))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

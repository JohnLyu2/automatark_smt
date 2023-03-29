(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}")))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (str.in_re X (re.++ (str.to_re "Google") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:FILESIZE>\u{13}\u{a}"))))
; st=\s+www\.iggsey\.com.*BackAtTaCkadserver\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.iggsey.com") (re.* re.allchar) (str.to_re "BackAtTaCkadserver.warezclient.com\u{a}")))))
(check-sat)

(exit)

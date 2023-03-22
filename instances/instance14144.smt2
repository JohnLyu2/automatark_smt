(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}"))))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (str.in_re X (re.++ (str.to_re "Apofis") (re.* re.allchar) (str.to_re "Port.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,Registered\u{a}"))))
; Explorer\x2Fsto=notificationfind
(assert (str.in_re X (str.to_re "Explorer/sto=notification\u{13}find\u{a}")))
(check-sat)

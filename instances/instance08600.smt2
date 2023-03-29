(declare-const X String)
; (SE-?)?[0-9]{12}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "SE") (re.opt (str.to_re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Agent\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.com\u{a}"))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (not (str.in_re X (str.to_re "My/desktop/WinSessionHost:OnlineTPSystem}|\u{a}"))))
; logsFictionalReporterCookieUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (not (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:MailHost:MSNLOGOVN\u{a}")))))
; User-Agent\x3A[^\n\r]*aadserver\dYOUR\x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "aadserver") (re.range "0" "9") (str.to_re "YOUR/xml/toolbar/\u{a}")))))
; XPPreUser-Agent\x3ARemoteYOURsqlStarLoggerclvompycem\x2fcen\.vcn
(assert (str.in_re X (str.to_re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\u{a}")))
(check-sat)

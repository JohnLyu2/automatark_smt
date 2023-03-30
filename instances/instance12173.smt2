(declare-const X String)
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (not (str.in_re X (str.to_re "dist.atlas-ia.comSpy-LockedOnlineconnection\u{a}"))))
; log\=\x7BIP\x3A\s+Pcast\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecnRXnewads1\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cnRXnewads1.com\u{a}")))))
(check-sat)

(exit)

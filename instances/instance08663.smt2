(declare-const X String)
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (str.in_re X (str.to_re "My/desktop/WinSessionHost:OnlineTPSystem}|\u{a}")))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}"))))
(check-sat)

(exit)

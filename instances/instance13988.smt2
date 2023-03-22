(declare-const X String)
; /filename=[^\n]*\x2eoga/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".oga/i\u{a}")))))
; /\x253D$/Im
(assert (not (str.in_re X (str.to_re "/%3D/Im\u{a}"))))
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.union (str.to_re ":") (str.to_re "|") (str.to_re ".")) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9"))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (not (str.in_re X (str.to_re "tv.180solutions.comGirlFriendHost:\u{a}"))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (not (str.in_re X (str.to_re "My/desktop/WinSessionHost:OnlineTPSystem}|\u{a}"))))
(check-sat)

(declare-const X String)
; Uin=\s+\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Uin=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".htaServerTheef2trustyfiles.comlogsHost:\u{a}")))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (str.in_re X (re.++ (str.to_re "Google") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:FILESIZE>\u{13}\u{a}"))))
(check-sat)

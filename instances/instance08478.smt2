(declare-const X String)
; EvilFTP\s+%3f[^\n\r]*\.bmpfilename\x3D\x22
(assert (str.in_re X (re.++ (str.to_re "EvilFTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "%3f") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re ".bmpfilename=\u{22}\u{a}"))))
; Host\x3AfromZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in_re X (str.to_re "Host:fromZC-Bridgev.xml/NFO,Registered\u{a}")))
(check-sat)

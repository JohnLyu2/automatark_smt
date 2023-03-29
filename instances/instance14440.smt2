(declare-const X String)
; dl\x2Eweb-nexus\x2Enet\d+www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (str.in_re X (re.++ (str.to_re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}"))))
; \.exe\s+ZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in_re X (re.++ (str.to_re ".exe") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ZC-Bridgev.xml/NFO,Registered\u{a}"))))
(check-sat)

(exit)

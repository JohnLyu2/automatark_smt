(declare-const X String)
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (not (str.in_re X (re.++ (str.to_re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccs\u{a}")))))
; SpyAgent\d+nick_name=CIA-Test\d+url=http\x3AHANDY\x2FNFO\x2CRegistered
(assert (not (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}HANDY/NFO,Registered\u{a}")))))
; com.*is[^\n\r]*Host\x3A\s+User-Agent\x3Au=serverFILE\x2Fxml\x2Ftoolbar\x2Fcheck=at\x3aHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "com") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\u{a}")))))
(check-sat)

(exit)

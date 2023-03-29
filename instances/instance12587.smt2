(declare-const X String)
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}"))))
; /\x2epui([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.pui") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Black\s+Warezxmlns\x3A%3flinkautomatici\x2EcomSubject\x3aHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.comSubject:Host:\u{a}")))))
; com.*is[^\n\r]*Host\x3A\s+User-Agent\x3Au=serverFILE\x2Fxml\x2Ftoolbar\x2Fcheck=at\x3aHost\x3A
(assert (str.in_re X (re.++ (str.to_re "com") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\u{a}"))))
(check-sat)

(exit)

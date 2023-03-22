(declare-const X String)
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "data2.activshopper.com\u{a}"))))
; /exploit\/(Exploit(App)?|Loader)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/exploit/") (re.union (re.++ (str.to_re "Exploit") (re.opt (str.to_re "App"))) (str.to_re "Loader")) (str.to_re ".class/ims\u{a}"))))
; \x2APORT2\x2A\w+Host\x3a\s+jspIDENTIFYserverHOST\x3ASubject\x3Ai\-femdom\x2EcomUser-Agent\x3Alog\=\x7BIP\x3A
(assert (not (str.in_re X (re.++ (str.to_re "*PORT2*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jspIDENTIFYserverHOST:Subject:i-femdom.comUser-Agent:log={IP:\u{a}")))))
(check-sat)

(declare-const X String)
; \x2APORT2\x2A\w+Host\x3a\s+jspIDENTIFYserverHOST\x3ASubject\x3Ai\-femdom\x2EcomUser-Agent\x3Alog\=\x7BIP\x3A
(assert (not (str.in_re X (re.++ (str.to_re "*PORT2*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jspIDENTIFYserverHOST:Subject:i-femdom.comUser-Agent:log={IP:\u{a}")))))
(check-sat)

(exit)

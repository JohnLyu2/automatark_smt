(declare-const X String)
; /setAttributeNS\s*\x28[^,]*,[^,]*requiredFeatures[^,]*,\s*[\x22\x27][\s\r\n]+[\x22\x27]/i
(assert (str.in_re X (re.++ (str.to_re "/setAttributeNS") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ","))) (str.to_re ",") (re.* (re.comp (str.to_re ","))) (str.to_re "requiredFeatures") (re.* (re.comp (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "/i\u{a}"))))
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (str.in_re X (str.to_re "mPOPUser-Agent:gotS:Users\u{5c}PORT=HXLogOnlyMGS-Internal-Web-Manager\u{a}")))
; /DEXT87(no|up|\d+\x2e\d+\x2e\d+\x2e\d+)/i
(assert (str.in_re X (re.++ (str.to_re "/DEXT87") (re.union (str.to_re "no") (str.to_re "up") (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "/i\u{a}"))))
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (not (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{a}"))))
; HWPEMycount\x2Eyok\x2Ecom
(assert (str.in_re X (str.to_re "HWPEMycount.yok.com\u{a}")))
(check-sat)

(exit)

(declare-const X String)
; /filename=[^\n]*\x2easx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asx/i\u{a}"))))
; Host\x3a\s+e2give\.com\s+NETObservemedia\x2Edxcdirect\x2EcomSubject\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObservemedia.dxcdirect.comSubject:quick.qsrch.com\u{a}"))))
; /^[^\x00][^\x00\x01]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{0}")) (re.+ (re.union (str.to_re "\u{0}") (str.to_re "\u{1}"))) (str.to_re "/\u{a}"))))
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (not (str.in_re X (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}"))))
(check-sat)

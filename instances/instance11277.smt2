(declare-const X String)
; /filename=[^\n]*\x2emp3/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp3/i\u{a}"))))
; /filename=[^\n]*\x2espx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".spx/i\u{a}")))))
; ^[1-9]{3}\s{0,1}[0-9]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "1" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3a\s+e2give\.com\s+NETObservemedia\x2Edxcdirect\x2EcomSubject\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObservemedia.dxcdirect.comSubject:quick.qsrch.com\u{a}"))))
(check-sat)

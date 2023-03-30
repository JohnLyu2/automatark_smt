(declare-const X String)
; /q=[a-f0-9]+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (str.in_re X (re.++ (str.to_re "Web-Mail") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.* re.allchar) (str.to_re "Surveillance\u{13}Host:\u{a}"))))
; Cookie\x3a\s+\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in_re X (re.++ (str.to_re "Cookie:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))))
(check-sat)

(exit)

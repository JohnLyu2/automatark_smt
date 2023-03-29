(declare-const X String)
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Web-Mail") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.* re.allchar) (str.to_re "Surveillance\u{13}Host:\u{a}")))))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re ".") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "_") (str.to_re "=") (str.to_re "#"))) (str.to_re "\u{a}")))))
; /\x23\d{2}\x3a\d{2}\x3a\d\d$/R
(assert (str.in_re X (re.++ (str.to_re "/#") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ":") (re.range "0" "9") (re.range "0" "9") (str.to_re "/R\u{a}"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "DA") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:www.e-finder.cc\u{a}")))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "B") (str.to_re "|") (str.to_re "K") (str.to_re "T") (str.to_re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)

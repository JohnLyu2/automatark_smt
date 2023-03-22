(declare-const X String)
; 62[0-9]{14,17}
(assert (str.in_re X (re.++ (str.to_re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to_re "\u{a}"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "DA") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:www.e-finder.cc\u{a}")))))
; Host\x3asearchresltwww\x2Ewordiq\x2Ecomwww2\x2einstantbuzz\x2ecom
(assert (str.in_re X (str.to_re "Host:searchresltwww.wordiq.com\u{1b}www2.instantbuzz.com\u{a}")))
; \x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in_re X (str.to_re "/xml/toolbar/\u{a}"))))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}")))))
(check-sat)

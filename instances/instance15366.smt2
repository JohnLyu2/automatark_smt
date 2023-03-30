(declare-const X String)
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "wwwfromToolbartheServer:www.searchreslt.com\u{a}")))))
; ^(\+44\s?7\d{3}|\(?07\d{3}\)?)\s?\d{3}\s?\d{3}$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "+44") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "7") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "(")) (str.to_re "07") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{a}")))))
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{a}"))))
(check-sat)

(exit)

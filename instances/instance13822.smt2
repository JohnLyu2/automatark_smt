(declare-const X String)
; mywayUser-Agent\x3AHost\x3ARedirector\x22body=FeaR\x25200\x2E2\x2E0\x2520Online\x3A\x2520\x5BIP_
(assert (not (str.in_re X (str.to_re "mywayUser-Agent:Host:Redirector\u{22}body=FeaR%200.2.0%20Online:%20[IP_\u{a}"))))
; ^[0-9](\.[0-9]+)?$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}")))
(check-sat)

(exit)

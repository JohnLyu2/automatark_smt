(declare-const X String)
; Host\x3A\s+ulmxct\x2fmqoyc\s+securityOmFkbWluADROARad\x2Emokead\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "securityOmFkbWluADROARad.mokead.com\u{a}")))))
(check-sat)

(exit)

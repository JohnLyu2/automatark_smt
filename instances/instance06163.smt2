(declare-const X String)
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (not (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{a}"))))
; /\x02[^\x0a]+\x3a[^\x0a]+\x0a/
(assert (str.in_re X (re.++ (str.to_re "/\u{2}") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{a}/\u{a}"))))
(check-sat)

(exit)

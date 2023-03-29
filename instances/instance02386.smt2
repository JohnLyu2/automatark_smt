(declare-const X String)
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.* re.allchar) (str.to_re "Cookie:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "richfind.comSimpsonFrom:\u{a}")))))
(check-sat)

(exit)

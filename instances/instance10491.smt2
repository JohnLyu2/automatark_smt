(declare-const X String)
; /^[^\s]*\x0D\x0A$/P
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{d}\u{a}/P\u{a}")))))
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.* re.allchar) (str.to_re "Cookie:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "richfind.comSimpsonFrom:\u{a}"))))
; Toolbar\x5Chome\/lordofsearchthis
(assert (str.in_re X (str.to_re "Toolbar\u{5c}home/lordofsearchthis\u{a}")))
(check-sat)

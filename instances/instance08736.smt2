(declare-const X String)
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".jar/U\u{a}"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.* re.allchar) (str.to_re "Cookie:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "richfind.comSimpsonFrom:\u{a}"))))
(check-sat)

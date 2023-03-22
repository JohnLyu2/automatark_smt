(declare-const X String)
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}"))))
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)

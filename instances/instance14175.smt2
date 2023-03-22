(declare-const X String)
; Host\x3A\sHello\x2E.*forum=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "forum=\u{a}"))))
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (not (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "scribd") re.allchar (str.to_re "com/doc/2569355/Geo-Distance-Search-with-MySQL\u{a}")))))
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:/tba/From:\u{a}"))))
; /filename=[^\n]*\x2exspf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xspf/i\u{a}"))))
; /filename=[^\n]*\x2esvg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".svg/i\u{a}"))))
(check-sat)

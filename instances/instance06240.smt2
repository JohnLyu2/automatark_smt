(declare-const X String)
; /filename=[^\n]*\x2egif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gif/i\u{a}"))))
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "scribd") re.allchar (str.to_re "com/doc/2569355/Geo-Distance-Search-with-MySQL\u{a}"))))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Spy") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}"))))
(check-sat)

(exit)

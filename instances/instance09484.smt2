(declare-const X String)
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in_re X (re.++ (str.to_re "for") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}"))))
; /filename=[^\n]*\x2ef4p/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4p/i\u{a}"))))
; User-Agent\x3A\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}"))))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}")))
; (""|[^"])*
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{22}\u{22}") (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; Subject\x3A.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}")))))
; (\\.|[^"])*
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}"))))
(check-sat)

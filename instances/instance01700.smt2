(declare-const X String)
; Toolbar\w+www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.commedia.top-banners.com\u{a}")))))
(check-sat)

(exit)

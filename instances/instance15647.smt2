(declare-const X String)
; /filename=[^\n]*\x2ejfi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfi/i\u{a}"))))
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (str.in_re X (str.to_re "YOURHost:www.alfacleaner.com\u{a}")))
; ^((\.\./|[a-zA-Z0-9_/\-\\])*\.[a-zA-Z0-9]+)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.union (str.to_re "../") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "/") (str.to_re "-") (str.to_re "\u{5c}"))) (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
(check-sat)

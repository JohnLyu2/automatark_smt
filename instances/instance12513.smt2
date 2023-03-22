(declare-const X String)
; dll\x3Fbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in_re X (str.to_re "dll?badurl.grandstreetinteractive.com\u{a}"))))
; ([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9._-]+)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))))))
(check-sat)

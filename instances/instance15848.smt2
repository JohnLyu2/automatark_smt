(declare-const X String)
; /[a-z]=[a-f0-9]{98}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (str.to_re "=") ((_ re.loop 98 98) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/P\u{a}")))))
; Toolbar.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}"))))
; /filename=[^\n]*\x2exm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xm/i\u{a}"))))
; to\d+User-Agent\x3AFiltered
(assert (not (str.in_re X (re.++ (str.to_re "to") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:Filtered\u{a}")))))
; Pass-On\w+c\.goclick\.comletter
(assert (str.in_re X (re.++ (str.to_re "Pass-On") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "c.goclick.comletter\u{a}"))))
(check-sat)

(exit)

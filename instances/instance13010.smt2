(declare-const X String)
; /^h=\d+&w=\d+&ua=/Psi
(assert (str.in_re X (re.++ (str.to_re "/h=") (re.+ (re.range "0" "9")) (str.to_re "&w=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Psi\u{a}"))))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}")))
; /filename=[^\n]*\x2exslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}"))))
; ((0)+(\.[1-9](\d)?))|((0)+(\.(\d)[1-9]+))|(([1-9]+(0)?)+(\.\d+)?)|(([1-9]+(0)?)+(\.\d+)?)
(assert (not (str.in_re X (re.union (re.++ (re.+ (str.to_re "0")) (str.to_re ".") (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (re.+ (str.to_re "0")) (str.to_re ".") (re.range "0" "9") (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to_re "0")))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "\u{a}") (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to_re "0")))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in_re X (str.to_re "Validation of Mexican RFC for tax payers individuals\u{a}"))))
; Toolbar\d+Host\x3A\d+4\x2e8\x2e4\x7D\x7BTrojan\x3Aare
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "4.8.4}{Trojan:are\u{a}"))))
(check-sat)

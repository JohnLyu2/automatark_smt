(declare-const X String)
; /\x2f[\w\x2d]*\x2e\x2e$/mU
(assert (str.in_re X (re.++ (str.to_re "//") (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "../mU\u{a}"))))
; ^\[assembly: AssemblyVersion\(\"([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)
(assert (not (str.in_re X (re.++ (str.to_re "[assembly: AssemblyVersion(\u{22}") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)

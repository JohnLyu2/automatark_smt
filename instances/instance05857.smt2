(declare-const X String)
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

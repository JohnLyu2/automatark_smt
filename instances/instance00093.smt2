(declare-const X String)
; (\bR(\.|)R(\.|)|RURAL\s{0,}(ROUTE|RT(\.|)))\s{0,}\d{1,}(,|)\s{1,}\bBOX\s{0,}\d
(assert (str.in_re X (re.++ (re.union (str.to_re "R.R.") (re.++ (str.to_re "RURAL") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "R") (re.union (str.to_re "OUTE") (str.to_re "T.")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BOX") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)

(exit)

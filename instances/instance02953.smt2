(declare-const X String)
; ^([A-Za-z\-]+)\s+(\w+)\s+([A-Za-z0-9_\-\.]+)\s+([A-Za-z0-9_\-\.]+)\s+(\d+)\s+(.{3} [0-9 ]{2} ([0-9][0-9]:[0-9][0-9]| [0-9]{4}))\s+(.+)$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to_re "-"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ re.allchar) (str.to_re "\u{a}") ((_ re.loop 3 3) re.allchar) (str.to_re " ") ((_ re.loop 2 2) (re.union (re.range "0" "9") (str.to_re " "))) (str.to_re " ") (re.union (re.++ (re.range "0" "9") (re.range "0" "9") (str.to_re ":") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")))))))
(check-sat)

(exit)

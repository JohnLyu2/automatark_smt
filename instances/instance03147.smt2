(declare-const X String)
; ^.*[_A-Za-z0-9]+[\t ]+[\*&]?[\t ]*[_A-Za-z0-9](::)?[_A-Za-z0-9:]+[\t ]*\(( *[ \[\]\*&A-Za-z0-9_]+ *,? *)*\).*$
(assert (str.in_re X (re.++ (re.* re.allchar) (re.+ (re.union (str.to_re "_") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.+ (re.union (str.to_re "\u{9}") (str.to_re " "))) (re.opt (re.union (str.to_re "*") (str.to_re "&"))) (re.* (re.union (str.to_re "\u{9}") (str.to_re " "))) (re.union (str.to_re "_") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.opt (str.to_re "::")) (re.+ (re.union (str.to_re "_") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re ":"))) (re.* (re.union (str.to_re "\u{9}") (str.to_re " "))) (str.to_re "(") (re.* (re.++ (re.* (str.to_re " ")) (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "*") (str.to_re "&") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (re.* (str.to_re " ")) (re.opt (str.to_re ",")) (re.* (str.to_re " ")))) (str.to_re ")") (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)

(exit)

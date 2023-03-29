(declare-const X String)
; ^[0-9]{1,15}(\.([0-9]{1,2}))?$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 15) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /^[^\x00][^\x00\x01]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{0}")) (re.+ (re.union (str.to_re "\u{0}") (str.to_re "\u{1}"))) (str.to_re "/\u{a}")))))
; /<script>.*?\x2f\x2a\w+\s\x2a\x2f\s*\x22\w+\x22\x2b\x22\w+\x22\x2esubstr\x28\d{2},\d{2}\x29\x2f\x2a\w+\s\x2a\x2f\s\x3b/
(assert (not (str.in_re X (re.++ (str.to_re "/<script>") (re.* re.allchar) (str.to_re "/*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "*/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{22}+\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{22}.substr(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ")/*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "*/") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ";/\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (not (str.in_re X (re.++ (str.to_re "//AES") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iU\u{a}")))))
; ([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+)|([0-9]+)
(assert (str.in_re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\x2ewax([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wax") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

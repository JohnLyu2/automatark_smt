(declare-const X String)
; /\/[a-zA-Z_-]+\.ee$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".ee/U\u{a}"))))
; /\/SUS\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (not (str.in_re X (re.++ (str.to_re "//SUS") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iU\u{a}")))))
; /^[oz]/Ri
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "o") (str.to_re "z")) (str.to_re "/Ri\u{a}"))))
; ^[^']*?\<\s*Assembly\s*:\s*AssemblyVersion\s*\(\s*"(\*|[0-9]+.\*|[0-9]+.[0-9]+.\*|[0-9]+.[0-9]+.[0-9]+.\*|[0-9]+.[0-9]+.[0-9]+.[0-9]+)"\s*\)\s*\>.*$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "<") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Assembly") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AssemblyVersion") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.union (str.to_re "*") (re.++ (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")))) (str.to_re "\u{22}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">") (re.* re.allchar) (str.to_re "\u{a}"))))
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (not (str.in_re X (re.++ (str.to_re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to_re "/U\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; IP\d+SAHPORT-User-Agent\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:User-Agent:\u{a}"))))
; ^(([a-zA-Z][a-zA-Z_$0-9]*(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.)?([a-zA-Z][a-zA-Z_$0-9]*)$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "$") (re.range "0" "9"))) (re.* (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "$") (re.range "0" "9"))))))) (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "$") (re.range "0" "9")))))))
; /\x2elnk([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.lnk") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (SELECT\s[\w\*\)\(\,\s]+\sFROM\s[\w]+)|
(assert (str.in_re X (re.union (re.++ (str.to_re "SELECT") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (str.to_re "*") (str.to_re ")") (str.to_re "(") (str.to_re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "FROM") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}"))))
; /^[a-zA-Z0-9]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/\u{a}"))))
(check-sat)

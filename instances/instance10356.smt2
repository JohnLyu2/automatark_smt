(declare-const X String)
; /\x2epaq8o([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.paq8o") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /^loginpost\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in_re X (re.++ (str.to_re "/loginpost|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}")))))
; LogsHost\x3asearches\x2Eworldtostart\x2Ecom
(assert (not (str.in_re X (str.to_re "LogsHost:searches.worldtostart.com\u{a}"))))
(check-sat)

(exit)

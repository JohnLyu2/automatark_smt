(declare-const X String)
; ^([a-zA-Z][a-zA-Z0-9]{1,100})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 1 100) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
; /^[a-z][\w\.]+@([\w\-]+\.)+[a-z]{2,7}$/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (re.+ (re.union (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) ((_ re.loop 2 7) (re.range "a" "z")) (str.to_re "/i\u{a}"))))
; /^([A-Za-z0-9+\x2f]{4})*([A-Za-z0-9+\x2f]{4}|[A-Za-z0-9+\x2f]{3}=|[A-Za-z0-9+\x2f]{2}==)$/mP
(assert (str.in_re X (re.++ (str.to_re "/") (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/")))) (re.union ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/"))) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/"))) (str.to_re "=")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/"))) (str.to_re "=="))) (str.to_re "/mP\u{a}"))))
; ^[\n <"';]*([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+)
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{a}") (str.to_re " ") (str.to_re "<") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";"))) (str.to_re "\u{a}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-")))))))
; Host\x3A\s+\.ico.*SpyAgentHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.* re.allchar) (str.to_re "SpyAgentHost:\u{a}"))))
(check-sat)

(exit)

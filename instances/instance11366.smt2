(declare-const X String)
; /\x2erm([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^[a-zA-Z0-9][a-zA-Z0-9-_.]{2,8}[a-zA-Z0-9]$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 8) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}")))))
; X-FILTERED-BY-GHOST\x3a\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (not (str.in_re X (re.++ (str.to_re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
(check-sat)

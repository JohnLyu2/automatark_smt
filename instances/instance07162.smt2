(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pif") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; /*d(9,15)
(assert (str.in_re X (re.++ (re.* (str.to_re "/")) (str.to_re "d9,15\u{a}"))))
; X-FILTERED-BY-GHOST\x3a\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in_re X (re.++ (str.to_re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}"))))
(check-sat)

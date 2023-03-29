(declare-const X String)
; X-FILTERED-BY-GHOST\x3a\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in_re X (re.++ (str.to_re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}"))))
(check-sat)

(exit)

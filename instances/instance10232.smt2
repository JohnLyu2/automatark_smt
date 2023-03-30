(declare-const X String)
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}"))))
; ChildWebGuardian\d+Subject\x3A
(assert (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}"))))
; /setAttributeNS\s*\x28[^,]*,[^,]*requiredFeatures[^,]*,\s*[\x22\x27][\s\r\n]+[\x22\x27]/i
(assert (str.in_re X (re.++ (str.to_re "/setAttributeNS") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ","))) (str.to_re ",") (re.* (re.comp (str.to_re ","))) (str.to_re "requiredFeatures") (re.* (re.comp (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "/i\u{a}"))))
; ^([1-zA-Z0-1@.\s]{1,255})$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 255) (re.union (re.range "1" "z") (re.range "A" "Z") (re.range "0" "1") (str.to_re "@") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

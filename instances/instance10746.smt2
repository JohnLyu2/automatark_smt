(declare-const X String)
; /filename\s*=\s*[^\r\n]*?\x2ettf[\x22\x27\x3b\s\r\n]/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ".ttf") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/i\u{a}")))))
; (^\d{1,9})+(,\d{1,9})*$
(assert (not (str.in_re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to_re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^([a-zA-z\s]{4,32})$
(assert (str.in_re X (re.++ ((_ re.loop 4 32) (re.union (re.range "a" "z") (re.range "A" "z") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^(Function|Sub)(\s+[\w]+)\([^\(\)]*\)
(assert (str.in_re X (re.++ (re.union (str.to_re "Function") (str.to_re "Sub")) (str.to_re "(") (re.* (re.union (str.to_re "(") (str.to_re ")"))) (str.to_re ")\u{a}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (not (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
(check-sat)

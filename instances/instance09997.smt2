(declare-const X String)
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (str.in_re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_")))) (re.++ (str.to_re "\u{a}_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_")))))))
; /filename=[^\n]*\x2ef4b/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4b/i\u{a}")))))
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (str.in_re X (str.to_re "\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax\u{a}")))
(check-sat)

(exit)

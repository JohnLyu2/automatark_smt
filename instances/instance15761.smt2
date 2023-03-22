(declare-const X String)
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (not (str.in_re X (re.++ (str.to_re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to_re "?") (re.range "a" "z") (str.to_re " HTTP/1") re.allchar (str.to_re "1/i\u{a}")))))
; /css\s*?\x28\s*?[\x22\x27]margin[^\x29]*?[\x22\x27]\s*?\x2c\s*?[\x22\x27]\d{12,}\s*?px/smi
(assert (str.in_re X (re.++ (str.to_re "/css") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "margin") (re.* (re.comp (str.to_re ")"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "px/smi\u{a}") ((_ re.loop 12 12) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; /filename=[^\n]*\x2epdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pdf/i\u{a}"))))
; /filename=[^\n]*\x2egz/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gz/i\u{a}"))))
(check-sat)

(declare-const X String)
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in_re X (re.++ (re.union (re.range "\u{1}" "\u{8}") (str.to_re ",") (re.range "\u{a}" "\u{1f}") (str.to_re "\u{7f}") (str.to_re "\u{81}") (str.to_re "\u{8d}") (str.to_re "\u{8f}") (str.to_re "\u{90}") (str.to_re "\u{9d}")) (str.to_re "\u{a}"))))
(check-sat)

(exit)

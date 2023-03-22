(declare-const X String)
; /\bobj\x0a\x20*?\/Pattern\x20*?\x0aendobj\b/i
(assert (not (str.in_re X (re.++ (str.to_re "/obj\u{a}") (re.* (str.to_re " ")) (str.to_re "/Pattern") (re.* (str.to_re " ")) (str.to_re "\u{a}endobj/i\u{a}")))))
; [\\s+,]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "s") (str.to_re "+") (str.to_re ",")) (str.to_re "\u{a}")))))
(check-sat)

(declare-const X String)
; /tip\x3D[a-zA-Z]+\x26cli\x3D[a-zA-Z]+\x26tipo\x3Dcli\x26inf\x3D/smiP
(assert (str.in_re X (re.++ (str.to_re "/tip=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "&cli=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "&tipo=cli&inf=/smiP\u{a}"))))
(check-sat)

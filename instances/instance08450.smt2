(declare-const X String)
; ^
(assert (not (str.in_re X (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2etga/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tga/i\u{a}"))))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2eogv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogv/i\u{a}"))))
(check-sat)

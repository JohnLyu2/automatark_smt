(declare-const X String)
; /filename=[^\n]*\x2empeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpeg/i\u{a}")))))
(check-sat)

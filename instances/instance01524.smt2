(declare-const X String)
; /filename=[^\n]*\x2epor/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".por/i\u{a}"))))
(check-sat)

(exit)

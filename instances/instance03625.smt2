(declare-const X String)
; /filename=[^\n]*\x2empg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpg/i\u{a}"))))
(check-sat)

(exit)

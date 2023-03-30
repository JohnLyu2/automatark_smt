(declare-const X String)
; /filename=[^\n]*\x2eets/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ets/i\u{a}"))))
; /filename=[^\n]*\x2eht3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ht3/i\u{a}")))))
(check-sat)

(exit)

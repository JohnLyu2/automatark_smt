(declare-const X String)
; DigExt.*\x23\x23\x23\x23
(assert (str.in_re X (re.++ (str.to_re "DigExt") (re.* re.allchar) (str.to_re "####\u{a}"))))
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wma/i\u{a}")))))
(check-sat)

(exit)

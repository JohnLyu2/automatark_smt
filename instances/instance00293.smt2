(declare-const X String)
; /filename=[^\n]*\x2eeot/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eot/i\u{a}")))))
(check-sat)

(declare-const X String)
; [\x80-\xFF]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2eeot/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eot/i\u{a}"))))
(check-sat)

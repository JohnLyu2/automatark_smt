(declare-const X String)
; /filename=[^\n]*\x2edcr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dcr/i\u{a}"))))
; [\x80-\xFF]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
(check-sat)

(exit)

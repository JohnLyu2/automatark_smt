(declare-const X String)
; /filename=[^\n]*\x2evisprj/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".visprj/i\u{a}"))))
; /filename=[^\n]*\x2exfdl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xfdl/i\u{a}")))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}")))
(check-sat)

(exit)

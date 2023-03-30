(declare-const X String)
; Host\x3A\x252EResultsUser-Agent\x3A
(assert (str.in_re X (str.to_re "Host:%2EResultsUser-Agent:\u{a}")))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}"))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<?php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "?>")))))
; /filename=[^\n]*\x2ef4b/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4b/i\u{a}")))))
(check-sat)

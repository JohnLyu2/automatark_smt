(declare-const X String)
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}")))))
(check-sat)

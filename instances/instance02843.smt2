(declare-const X String)
; for\sinternalcyber@yahoo\x2EcomHeadersRedirectionHost\x3A
(assert (str.in_re X (re.++ (str.to_re "for") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirectionHost:\u{a}"))))
(check-sat)

(exit)

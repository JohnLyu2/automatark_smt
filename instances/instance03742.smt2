(declare-const X String)
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}")))))
(check-sat)

(exit)

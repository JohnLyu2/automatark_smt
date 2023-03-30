(declare-const X String)
; DigExt.*\x23\x23\x23\x23
(assert (str.in_re X (re.++ (str.to_re "DigExt") (re.* re.allchar) (str.to_re "####\u{a}"))))
(check-sat)

(exit)

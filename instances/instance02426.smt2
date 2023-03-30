(declare-const X String)
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "OSSProxy") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}backtrust.com\u{a}")))))
(check-sat)

(exit)

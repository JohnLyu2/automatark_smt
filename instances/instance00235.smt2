(declare-const X String)
; function.*WEBCAM-.*User-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "function") (re.* re.allchar) (str.to_re "WEBCAM-") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)

(exit)

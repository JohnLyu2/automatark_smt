(declare-const X String)
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}")))))
(check-sat)

(exit)

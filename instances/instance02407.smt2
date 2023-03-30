(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}"))))
(check-sat)

(exit)

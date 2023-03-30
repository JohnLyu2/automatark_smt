(declare-const X String)
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.2-seek.com/search\u{a}"))))
(check-sat)

(exit)

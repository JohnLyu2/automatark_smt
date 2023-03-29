(declare-const X String)
; as\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=.*X-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)

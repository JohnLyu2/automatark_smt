(declare-const X String)
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (str.in_re X (str.to_re "Referer:www.ccnnlc.com\u{13}\u{4}\u{0}User-Agent:\u{22}The\u{a}")))
(check-sat)

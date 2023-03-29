(declare-const X String)
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}")))))
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (re.++ (str.to_re "cdpView") (re.* re.allchar) (str.to_re "protocol") (re.* re.allchar) (str.to_re "/s(robert@blackcastlesoft.com)\u{a}")))))
; subject\x3A.*Login\s+adfsgecoiwnf
(assert (not (str.in_re X (re.++ (str.to_re "subject:") (re.* re.allchar) (str.to_re "Login") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}\u{a}")))))
; www\x2Emirarsearch\x2Ecom
(assert (not (str.in_re X (str.to_re "www.mirarsearch.com\u{a}"))))
(check-sat)

(exit)

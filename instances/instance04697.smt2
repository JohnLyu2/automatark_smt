(declare-const X String)
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (re.++ (str.to_re "cdpView") (re.* re.allchar) (str.to_re "protocol") (re.* re.allchar) (str.to_re "/s(robert@blackcastlesoft.com)\u{a}")))))
(check-sat)

(exit)

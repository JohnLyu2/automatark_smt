(declare-const X String)
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (re.++ (str.to_re "cdpView") (re.* re.allchar) (str.to_re "protocol") (re.* re.allchar) (str.to_re "/s(robert@blackcastlesoft.com)\u{a}")))))
; /filename=[^\n]*\x2emka/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mka/i\u{a}"))))
(check-sat)

(exit)

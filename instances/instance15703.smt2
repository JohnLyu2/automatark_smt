(declare-const X String)
; com.*is[^\n\r]*Host\x3A\s+User-Agent\x3Au=serverFILE\x2Fxml\x2Ftoolbar\x2Fcheck=at\x3aHost\x3A
(assert (str.in_re X (re.++ (str.to_re "com") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\u{a}"))))
; <img[^>]* src=\"([^\"]*)\"[^>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<img") (re.* (re.comp (str.to_re ">"))) (str.to_re " src=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (str.in_re X (re.++ (str.to_re ".bmp") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "couponbar.coupons.com") (re.* re.allchar) (str.to_re "Host:Host:HTTPwww\u{a}"))))
; ^L[a-zA-Z0-9]{26,33}$
(assert (not (str.in_re X (re.++ (str.to_re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2emetalink/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".metalink/i\u{a}")))))
(check-sat)

(exit)

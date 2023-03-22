(declare-const X String)
; EFError.*\x2Fcs\x2Fpop4\x2F\s+
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; Host\x3A[^\n\r]*Travel[^\n\r]*From\x3Awww\x2EZSearchResults\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Travel") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "From:www.ZSearchResults.com\u{13}\u{a}"))))
; /\x2eemf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.emf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

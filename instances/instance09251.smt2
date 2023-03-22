(declare-const X String)
; /\x2eafm([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.afm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; media\x2Etop-banners\x2Ecom
(assert (not (str.in_re X (str.to_re "media.top-banners.com\u{a}"))))
(check-sat)

(declare-const X String)
; for\sinternalcyber@yahoo\x2EcomHeadersRedirectionHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirectionHost:\u{a}")))))
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (str.in_re X (re.++ (str.to_re "<a") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (re.* re.allchar) (str.to_re ">") (re.opt (re.union (re.+ (re.comp (str.to_re "<"))) (re.* re.allchar))) (str.to_re "</a>\u{a}"))))
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.smil") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mpg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

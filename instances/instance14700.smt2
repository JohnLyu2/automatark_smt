(declare-const X String)
; /filename=[^\n]*\x2em3u/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m3u/i\u{a}"))))
; \x28BDLL\x29\s+CD\x2F.*Host\x3A
(assert (str.in_re X (re.++ (str.to_re "(BDLL)\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
(check-sat)

(declare-const X String)
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mp4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (not (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}"))))
; <img[^>]* src=\"([^\"]*)\"[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<img") (re.* (re.comp (str.to_re ">"))) (str.to_re " src=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)

(exit)

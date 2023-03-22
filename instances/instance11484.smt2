(declare-const X String)
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in_re X (str.to_re "thereHost:select/Getwww.2-seek.com/search\u{a}"))))
; /\x2ehlp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.hlp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

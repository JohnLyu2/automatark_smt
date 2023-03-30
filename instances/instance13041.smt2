(declare-const X String)
; /\x2escr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.scr") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)

(exit)

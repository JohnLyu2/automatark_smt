(declare-const X String)
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mp4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Yeah\!User-Agent\x3a
(assert (str.in_re X (str.to_re "Yeah!User-Agent:\u{a}")))
(check-sat)

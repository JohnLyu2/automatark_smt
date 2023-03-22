(declare-const X String)
; /\x2eets([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.ets") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\/jorg\.html$/U
(assert (str.in_re X (str.to_re "//jorg.html/U\u{a}")))
(check-sat)

(declare-const X String)
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "\u{d}\u{a}STATUS:") (re.range "0" "9") (str.to_re "Host:Referer:ServerSubject:\u{a}")))))
; User-Agent\x3aUser-Agent\x3A
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}")))
; /\x2ecnt([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.cnt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)

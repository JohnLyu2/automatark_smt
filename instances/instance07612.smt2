(declare-const X String)
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (str.to_re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\u{a}")))
; /\x2eppsx([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ppsx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; fsbuff\s+User-Agent\x3Afrom\x3A
(assert (not (str.in_re X (re.++ (str.to_re "fsbuff") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:from:\u{a}")))))
(check-sat)

(exit)

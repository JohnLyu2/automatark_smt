(declare-const X String)
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Host:SoftActivity\u{13}Yeah!\u{a}"))))
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
; /\x2erm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

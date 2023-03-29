(declare-const X String)
; /^Content-Type\x3a[\x20\x09]+application\/x-msdos-program/smiH
(assert (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/x-msdos-program/smiH\u{a}"))))
(check-sat)

(exit)

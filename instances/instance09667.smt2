(declare-const X String)
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}")))))
; /^Content-Type\x3a[\x20\x09]+application\/x-msdos-program/smiH
(assert (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/x-msdos-program/smiH\u{a}"))))
(check-sat)

(exit)

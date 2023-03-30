(declare-const X String)
; Host\x3A\s+Host\x3ASubject\x3anamedDownloadUser-Agent\x3aBackAtTaCk
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:namedDownloadUser-Agent:BackAtTaCk\u{a}")))))
(check-sat)

(exit)

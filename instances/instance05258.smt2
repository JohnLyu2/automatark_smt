(declare-const X String)
; Host\s+pjpoptwql\x2frlnjSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnjSubject:\u{a}")))))
(check-sat)

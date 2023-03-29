(declare-const X String)
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}")))
; Host\x3APG=SPEEDBARReferer\x3a
(assert (not (str.in_re X (str.to_re "Host:PG=SPEEDBARReferer:\u{a}"))))
(check-sat)

(exit)

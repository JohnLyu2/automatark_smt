(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}"))))
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnj") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
(check-sat)

(exit)

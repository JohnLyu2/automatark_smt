(declare-const X String)
; ^(0?[1-9]|1[012])/([012][0-9]|[1-9]|3[01])/([12][0-9]{3})$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.range "1" "9") (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/\u{a}") (re.union (str.to_re "1") (str.to_re "2")) ((_ re.loop 3 3) (re.range "0" "9"))))))
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in_re X (str.to_re "weatherSubject:X-Mailer:\u{13}TOOLBAR/newsurfer4/\u{a}")))
; /\x2emov([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mov") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (not (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Netspy") (re.+ (re.range "0" "9")) (str.to_re "pjpoptwql/rlnjX-Mailer:\u{13}Host:snprtz|dialnoref=%user_id\u{a}")))))
; ^(\d{1}|\d{2}|\d{3})(\.\d{3})*?$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.* (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; ^(\d{1,})$|^(\d{1,}\.)$|^(\d{0,}?\.\d{1,})$|^([+-]\d{1,}(\.)?)$|^([+-](\d{1,})?\.\d{1,})$
(assert (str.in_re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".")) (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (str.to_re "."))) (re.++ (str.to_re "\u{a}") (re.union (str.to_re "+") (str.to_re "-")) (re.opt (re.+ (re.range "0" "9"))) (str.to_re ".") (re.+ (re.range "0" "9"))))))
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Netspy") (re.+ (re.range "0" "9")) (str.to_re "pjpoptwql/rlnjX-Mailer:\u{13}Host:snprtz|dialnoref=%user_id\u{a}"))))
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
; ^[-]?\d*(\.\d*)$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (str.to_re "\u{a}.") (re.* (re.range "0" "9")))))
; /\x2emsi([\?\x5c\x2f]|$)/miU
(assert (not (str.in_re X (re.++ (str.to_re "/.msi") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; /\x2em3u([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m3u") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.ini\u{a}"))))
; ^(0?\d|1[012])\/([012]?\d|3[01])\/(\d{2}|\d{4})$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}")))
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (not (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Netspy") (re.+ (re.range "0" "9")) (str.to_re "pjpoptwql/rlnjX-Mailer:\u{13}Host:snprtz|dialnoref=%user_id\u{a}")))))
(check-sat)

(exit)

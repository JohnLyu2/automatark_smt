(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}"))))
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (not (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Netspy") (re.+ (re.range "0" "9")) (str.to_re "pjpoptwql/rlnjX-Mailer:\u{13}Host:snprtz|dialnoref=%user_id\u{a}")))))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (not (str.in_re X (re.++ (str.to_re ".fcgi") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "]%20[Port_NETObserveTM_SEARCH3\u{a}")))))
(check-sat)

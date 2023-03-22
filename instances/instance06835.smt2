(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}"))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (str.in_re X (re.++ (str.to_re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to_re "?") (re.range "a" "z") (str.to_re " HTTP/1") re.allchar (str.to_re "1/i\u{a}"))))
; ^(0[1-9]|1[0-2])\/((0[1-9]|2\d)|3[0-1])\/(19\d\d|200[0-3])$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.++ (str.to_re "3") (re.range "0" "1")) (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (str.to_re "/") (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "200") (re.range "0" "3"))) (str.to_re "\u{a}"))))
(check-sat)

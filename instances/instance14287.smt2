(declare-const X String)
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (str.in_re X (str.to_re "tv.180solutions.comGirlFriendHost:\u{a}")))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in_re X (re.++ (str.to_re ".fcgi") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "]%20[Port_NETObserveTM_SEARCH3\u{a}"))))
; ^[{][A-Za-z0-9]{8}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{12}[}]$|^[A-Za-z0-9]{8}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{12}$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "{") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "}")) (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}"))))))
; Referer\x3A.*User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
(check-sat)

(exit)

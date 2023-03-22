(declare-const X String)
; to\s+Host\x3AWeHost\x3a
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:\u{a}"))))
; /filename=[^\n]*\x2em3u/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m3u/i\u{a}")))))
; www\x2Esnap\x2Ecom\w+FTX-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "www.snap.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "FTX-Mailer:\u{13}fromReferer:search.conduit.com\u{a}")))))
; -[0-9]*[x][0-9]*
(assert (not (str.in_re X (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (str.to_re "x") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.++ (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to_re "\u{a}")))))
(check-sat)

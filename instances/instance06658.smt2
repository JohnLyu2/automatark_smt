(declare-const X String)
; /\x2ewrf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wrf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:\u{a}")))))
; ((0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))/\d{2}
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /^\/[a-f0-9]{8}\.js\?cp\x3d/Umi
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".js?cp=/Umi\u{a}")))))
; www\x2Esnap\x2Ecom\w+FTX-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom
(assert (str.in_re X (re.++ (str.to_re "www.snap.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "FTX-Mailer:\u{13}fromReferer:search.conduit.com\u{a}"))))
(check-sat)

(exit)

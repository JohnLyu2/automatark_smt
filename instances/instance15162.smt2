(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Basic") (re.* re.allchar) (str.to_re "ProtoUser-Agent:\u{a}"))))
; Server\s+www\x2Epeer2mail\x2Ecom.*Subject\x3AReferer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "Subject:Referer:\u{a}")))))
; /\x2ereg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.reg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.+ (re.range "0" "9")) (str.to_re "metaresults.copernic.com\u{a}"))))
(check-sat)

(exit)

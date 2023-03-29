(declare-const X String)
; hostie\s+freeIPaddrsBardata\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "hostie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "freeIPaddrsBardata.warezclient.comHost:User-Agent:\u{a}")))))
; ovpl\w+UBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "UBAgent%3fSchwindlerurl=Host:httpUser-Agent:\u{a}"))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{a}")))))
(check-sat)

(exit)

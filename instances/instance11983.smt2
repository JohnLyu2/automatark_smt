(declare-const X String)
; NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecn
(assert (not (str.in_re X (re.++ (str.to_re "NETObserve") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cn\u{a}")))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "DK") (re.opt (str.to_re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in_re X (re.++ (str.to_re "search.imesh.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDogupwww.klikvipsearch.com\u{a}"))))
; Server\s+www\x2Epeer2mail\x2Ecomsubject\x3AfileId\x3d\x5b
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.comsubject:fileId=[\u{a}")))))
(check-sat)

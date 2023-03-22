(declare-const X String)
; ^[A-Z0-9\\-\\&-]{5,12}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 12) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "\u{5c}" "\u{5c}") (str.to_re "&") (str.to_re "-"))) (str.to_re "\u{a}")))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}")))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (not (str.in_re X (re.++ (str.to_re "search.imesh.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDogupwww.klikvipsearch.com\u{a}")))))
(check-sat)

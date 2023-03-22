(declare-const X String)
; /^\x2f[A-Z\d]{83}\x3d[A-Z\d]{10}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 83 83) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 10 10) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
; [ \t]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "\u{a}")))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in_re X (re.++ (str.to_re "search.imesh.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDogupwww.klikvipsearch.com\u{a}"))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (str.in_re X (str.to_re "eveocczmthmmq/omzlHello./asp/offers.asp?\u{a}")))
(check-sat)

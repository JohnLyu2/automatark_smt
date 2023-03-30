(declare-const X String)
; toolbarplace\x2Ecom.*TencentTraveler\d+\x2Fnewsurfer4\x2F.*BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* re.allchar) (str.to_re "TencentTraveler") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/") (re.* re.allchar) (str.to_re "BysooTBADdcww.dmcast.com\u{a}")))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in_re X (re.++ (str.to_re "search.imesh.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDogupwww.klikvipsearch.com\u{a}"))))
(check-sat)

(exit)

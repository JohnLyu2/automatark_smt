(declare-const X String)
; search\x2econduit\x2ecom\d+sidebar\.activeshopper\.comUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "search.conduit.com") (re.+ (re.range "0" "9")) (str.to_re "sidebar.activeshopper.comUser-Agent:\u{a}"))))
(check-sat)

(declare-const X String)
; www\x2Eweepee\x2Ecom\d+metaresults\.copernic\.com\s+
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "metaresults.copernic.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; xbqyosoe\x2fcpvmwww\x2eurlblaze\x2enetconfigINTERNAL\.ini
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\u{a}"))))
(check-sat)

(exit)

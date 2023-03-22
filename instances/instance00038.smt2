(declare-const X String)
; tb\x2Efreeprod\x2Ecom\s+Web\.fcgiclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "tb.freeprod.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Web.fcgiclvompycem/cen.vcn\u{a}")))))
(check-sat)

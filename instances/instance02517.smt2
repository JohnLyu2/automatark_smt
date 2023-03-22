(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\x3C\x2Fchat\x3E
(assert (not (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.* re.allchar) (str.to_re "www.klikvipsearch.com") (re.* re.allchar) (str.to_re "</chat>\u{a}")))))
(check-sat)

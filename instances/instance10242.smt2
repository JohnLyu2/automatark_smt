(declare-const X String)
; www\x2Eezula\x2Ecom.*FTP.*User-Agent\x3Acontainsw3whoreport
(assert (not (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "FTP") (re.* re.allchar) (str.to_re "User-Agent:containsw3whoreport\u{a}")))))
; this is test = this is
(assert (str.in_re X (str.to_re "this is test = this is\u{a}")))
; ad\x2Esearchsquire\x2Ecom\s+ocllceclbhs\x2fgth
(assert (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth\u{a}"))))
(check-sat)

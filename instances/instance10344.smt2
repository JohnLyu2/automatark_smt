(declare-const X String)
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
; Host\x3A\s+Host\x3ASubject\x3anamedDownloadUser-Agent\x3aBackAtTaCk
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:namedDownloadUser-Agent:BackAtTaCk\u{a}")))))
; Test\d+TencentTravelerWebConnLibHost\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "Test") (re.+ (re.range "0" "9")) (str.to_re "TencentTravelerWebConnLibHost:www.e-finder.cc\u{a}")))))
; \x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecommedia\x2Etop-banners\x2Ecom\x2Fbar_pl\x2Fb\.fcgi
(assert (not (str.in_re X (str.to_re "[StaticHost:FROM:cs.shopperreports.commedia.top-banners.com/bar_pl/b.fcgi\u{a}"))))
(check-sat)

(exit)

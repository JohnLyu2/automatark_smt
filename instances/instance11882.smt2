(declare-const X String)
; [0-7]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "7")) (str.to_re "\u{a}")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in_re X (str.to_re "filename=\u{22}Subject:www.adoptim.comreport/bar_pl/chk.fcgi\u{a}"))))
; e2give\.com.*Login\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Login") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}"))))
(check-sat)

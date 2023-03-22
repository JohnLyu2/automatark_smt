(declare-const X String)
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (str.to_re "filename=\u{22}Subject:www.adoptim.comreport/bar_pl/chk.fcgi\u{a}")))
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Java/1./H\u{a}"))))
; ^[0-9]*(\.)?[0-9]+$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

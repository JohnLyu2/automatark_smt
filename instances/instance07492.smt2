(declare-const X String)
; Host\x3aSubject\x3AClientnamedFrom\x3A
(assert (str.in_re X (str.to_re "Host:Subject:ClientnamedFrom:\u{a}")))
; User-Agent\x3AreadyHost\x3AHost\x3ASubject\x3Awininetproducts
(assert (str.in_re X (str.to_re "User-Agent:readyHost:Host:Subject:wininetproducts\u{a}")))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (str.to_re "filename=\u{22}Subject:www.adoptim.comreport/bar_pl/chk.fcgi\u{a}")))
(check-sat)

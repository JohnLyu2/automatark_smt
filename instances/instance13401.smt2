(declare-const X String)
; from\x3A\dwww\.thecommunicator\.net
(assert (not (str.in_re X (re.++ (str.to_re "from:") (re.range "0" "9") (str.to_re "www.thecommunicator.net\u{a}")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in_re X (str.to_re "filename=\u{22}Subject:www.adoptim.comreport/bar_pl/chk.fcgi\u{a}"))))
; ^(^N[BLSTU]$)|(^[AMN]B$)|(^[BQ]C$)|(^ON$)|(^PE$)|(^SK$)$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "N") (re.union (str.to_re "B") (str.to_re "L") (str.to_re "S") (str.to_re "T") (str.to_re "U"))) (re.++ (re.union (str.to_re "A") (str.to_re "M") (str.to_re "N")) (str.to_re "B")) (re.++ (re.union (str.to_re "B") (str.to_re "Q")) (str.to_re "C")) (str.to_re "ON") (str.to_re "PE") (str.to_re "SK\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; stats\x2edrivecleaner\x2ecom\sPARSERInformationurl=Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "stats.drivecleaner.com\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSERInformationurl=Host:\u{a}")))))
(check-sat)

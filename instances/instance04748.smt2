(declare-const X String)
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to_re "FTPsearch.dropspam.com\u{a}")))))
(check-sat)

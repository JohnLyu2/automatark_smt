(declare-const X String)
; ^([0]?[1-9]|[1][0-2]|[2][0-3]):([0-5][0-9]|[1-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (re.range "1" "9")) (str.to_re "\u{a}")))))
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}fromReferer:search.conduit.com/dss/cc.2_0_0.\u{a}")))
; \x2Fdesktop\x2FSystemwwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\u{a}"))))
(check-sat)

(exit)

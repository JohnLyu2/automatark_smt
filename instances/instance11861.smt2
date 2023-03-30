(declare-const X String)
; ^(\d*\s*\-?\s*\d*)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.range "0" "9"))))))
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}fromReferer:search.conduit.com/dss/cc.2_0_0.\u{a}")))
(check-sat)

(exit)

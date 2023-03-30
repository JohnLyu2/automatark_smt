(declare-const X String)
; www\x2Esearchreslt\x2Ecom
(assert (str.in_re X (str.to_re "www.searchreslt.com\u{a}")))
; ^(\+48\s+)?\d{3}(\s*|\-)\d{3}(\s*|\-)\d{3}$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+48") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Server\x3AWordTheHost\x3afrom
(assert (not (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}"))))
(check-sat)

(exit)

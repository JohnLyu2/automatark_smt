(declare-const X String)
; Peer\s+CodeguruBrowser.*UNSEEN\x22Host\x3Ahirmvtg\x2fggqh\.kqh
(assert (not (str.in_re X (re.++ (str.to_re "Peer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "UNSEEN\u{22}Host:hirmvtg/ggqh.kqh\u{1b}\u{a}")))))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Spy") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}"))))
; (</?\w*[^<>]*>)
(assert (str.in_re X (re.++ (str.to_re "\u{a}<") (re.opt (str.to_re "/")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">"))))
(check-sat)

(exit)

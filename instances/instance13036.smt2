(declare-const X String)
; Host\x3a[^\n\r]*A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "A-311") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.finSubject:Basic\u{a}"))))
; /\x00\.\x00\.\x00[\x2f\x5c]/R
(assert (str.in_re X (re.++ (str.to_re "/\u{0}.\u{0}.\u{0}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{a}"))))
; ^\s*[a-zA-Z0-9,\s]+\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in_re X (str.to_re "User-Agent:etbuviaebe/eqv.bvv\u{a}")))
(check-sat)

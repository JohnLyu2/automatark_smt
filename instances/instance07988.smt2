(declare-const X String)
; /\x2ecsv([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.csv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; select\x2FGet\s+Host\x3A.*ppcdomain\x2Eco\x2Euk
(assert (not (str.in_re X (re.++ (str.to_re "select/Get") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ppcdomain.co.uk\u{a}")))))
(check-sat)

(exit)

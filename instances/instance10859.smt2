(declare-const X String)
; /filename=[^\n]*\x2epfm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfm/i\u{a}"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (str.in_re X (re.++ (str.to_re "encoder") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:\u{a}"))))
(check-sat)

(exit)

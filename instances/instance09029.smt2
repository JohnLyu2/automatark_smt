(declare-const X String)
; Authorization\x3a\s+Host\x3a
(assert (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
; /filename=[^\n]*\x2ecsv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csv/i\u{a}"))))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2efdf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fdf/i\u{a}")))))
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (not (str.in_re X (re.++ (str.to_re "Kontiki") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.swf$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".swf/Ui\u{a}"))))
; Computeron\x3Acom\x3E2\x2E41
(assert (not (str.in_re X (str.to_re "Computeron:com>2.41\u{a}"))))
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (str.in_re X (re.++ (str.to_re "Kontiki") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}"))))
(check-sat)

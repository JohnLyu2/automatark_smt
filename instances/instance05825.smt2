(declare-const X String)
; info\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}"))))
(check-sat)

(exit)

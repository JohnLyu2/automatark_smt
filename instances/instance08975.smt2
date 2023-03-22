(declare-const X String)
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (str.in_re X (re.++ (str.to_re "/searchfast/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; /q=[a-f0-9]+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
(check-sat)

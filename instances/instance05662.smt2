(declare-const X String)
; Host\x3A\s+A-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "A-311Servert=form-data; name=\u{22}pid\u{22}\u{a}")))))
(check-sat)

(exit)

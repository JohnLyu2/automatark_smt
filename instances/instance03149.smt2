(declare-const X String)
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}"))))
(check-sat)

(exit)

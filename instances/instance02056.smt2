(declare-const X String)
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (str.in_re X (re.++ (str.to_re "\u{d}\u{a}STATUS:") (re.range "0" "9") (str.to_re "Host:Referer:ServerSubject:\u{a}"))))
(check-sat)

(exit)

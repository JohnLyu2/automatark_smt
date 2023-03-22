(declare-const X String)
; Referer\x3A.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)

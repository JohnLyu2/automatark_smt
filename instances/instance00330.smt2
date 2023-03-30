(declare-const X String)
; Subject\x3A.*User-Agent\x3A.*ResultATTENTION\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:\u{a}")))))
(check-sat)

(exit)

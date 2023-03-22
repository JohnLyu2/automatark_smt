(declare-const X String)
; Host\x3a\dATTENTION\x3A[^\n\r]*From\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "ATTENTION:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "From:User-Agent:\u{a}")))))
(check-sat)

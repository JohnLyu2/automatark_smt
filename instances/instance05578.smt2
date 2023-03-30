(declare-const X String)
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (not (str.in_re X (re.++ (str.to_re "User") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:riggiymd/wdhi.vhi\u{a}")))))
(check-sat)

(exit)

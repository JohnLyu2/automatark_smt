(declare-const X String)
; from\x3A\dwww\.thecommunicator\.net
(assert (str.in_re X (re.++ (str.to_re "from:") (re.range "0" "9") (str.to_re "www.thecommunicator.net\u{a}"))))
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (not (str.in_re X (re.++ (str.to_re "User") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:riggiymd/wdhi.vhi\u{a}")))))
(check-sat)

(exit)

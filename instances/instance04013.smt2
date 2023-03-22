(declare-const X String)
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (not (str.in_re X (re.++ (str.to_re "/hwid=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&pc=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&localip=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&winver=/U\u{a}")))))
(check-sat)

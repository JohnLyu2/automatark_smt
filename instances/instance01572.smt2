(declare-const X String)
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "URLBlaze") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "mPOPUser-Agent:\u{a}")))))
(check-sat)

(exit)

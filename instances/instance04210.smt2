(declare-const X String)
; www\x2Eezula\x2Ecom.*FTP.*User-Agent\x3Acontainsw3whoreport
(assert (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "FTP") (re.* re.allchar) (str.to_re "User-Agent:containsw3whoreport\u{a}"))))
(check-sat)

(exit)

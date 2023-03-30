(declare-const X String)
; NSIS_DOWNLOAD.*User-Agent\x3A\s+gpstool\x2eglobaladserver\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "NSIS_DOWNLOAD") (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "gpstool.globaladserver.com\u{a}")))))
(check-sat)

(exit)

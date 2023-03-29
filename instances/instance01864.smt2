(declare-const X String)
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "spyblini.inidata.warezclient.com\u{a}")))))
(check-sat)

(exit)

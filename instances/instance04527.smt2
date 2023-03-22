(declare-const X String)
; Host\x3Acdpnode=FILESIZE\x3E
(assert (not (str.in_re X (str.to_re "Host:cdpnode=FILESIZE>\u{13}\u{a}"))))
(check-sat)

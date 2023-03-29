(declare-const X String)
; Subject\x3aFTPdistdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "Subject:FTPdistdcww.dmcast.com\u{a}")))
(check-sat)

(exit)

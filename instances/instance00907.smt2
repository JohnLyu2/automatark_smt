(declare-const X String)
; Subject\x3aFTPdistdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "Subject:FTPdistdcww.dmcast.com\u{a}"))))
(check-sat)

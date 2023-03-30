(declare-const X String)
; pass=Referer\x3ASurveillance
(assert (not (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}"))))
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (str.in_re X (str.to_re "GREATHost:FILESIZE>\u{13}/iis2ebs.aspFTPUser-Agent:\u{a}")))
(check-sat)

(exit)

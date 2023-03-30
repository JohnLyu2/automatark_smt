(declare-const X String)
; (\\.|[^"])*
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}"))))
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (str.in_re X (str.to_re "GREATHost:FILESIZE>\u{13}/iis2ebs.aspFTPUser-Agent:\u{a}")))
(check-sat)

(exit)

(declare-const X String)
; Subject\x3areportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
; ^([0-1])*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "1")) (str.to_re "\u{a}"))))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (not (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}"))))
(check-sat)

(declare-const X String)
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (not (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}"))))
(check-sat)

(exit)

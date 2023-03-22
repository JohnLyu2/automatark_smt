(declare-const X String)
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{a}")))))
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}")))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}")))
(check-sat)

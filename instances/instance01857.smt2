(declare-const X String)
; KeyloggerFSWcmdldap\x3A\x2F\x2FExploiterconnection\x2Ewww\x2Eoemji\x2Ecomzopabora\x2EinfoConnection
(assert (not (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}"))))
(check-sat)

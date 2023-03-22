(declare-const X String)
; v=c=DALOGbacktrust\x2EcomHost\x3AConnectedHost\x3AHost\x3aHost\x3alsSpyDawn
(assert (str.in_re X (str.to_re "v=c=DALOGbacktrust.comHost:ConnectedHost:Host:Host:lsSpyDawn\u{a}")))
(check-sat)

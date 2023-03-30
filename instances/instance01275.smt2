(declare-const X String)
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (not (str.in_re X (str.to_re "dist.atlas-ia.comSpy-LockedOnlineconnection\u{a}"))))
(check-sat)

(exit)

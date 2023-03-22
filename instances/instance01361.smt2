(declare-const X String)
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (not (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{a}"))))
(check-sat)

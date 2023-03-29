(declare-const X String)
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (not (str.in_re X (str.to_re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\u{13}\u{a}"))))
(check-sat)

(exit)

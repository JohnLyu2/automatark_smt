(declare-const X String)
; RXFilteredDmInf\x5EJMailYeah\!Online\x2521\x2521\x2521Reportsversion\x2Etxt
(assert (str.in_re X (str.to_re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\u{a}")))
(check-sat)

(exit)

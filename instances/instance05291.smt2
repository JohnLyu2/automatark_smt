(declare-const X String)
; linkautomatici\x2EcomAID\x2FYourUser-Agent\x3AtoBasicwww\x2Ewebcruiser\x2Ecc
(assert (str.in_re X (str.to_re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\u{a}")))
(check-sat)

(exit)

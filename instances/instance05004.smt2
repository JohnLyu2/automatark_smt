(declare-const X String)
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (str.in_re X (str.to_re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\u{13}\u{a}")))
(check-sat)

(exit)

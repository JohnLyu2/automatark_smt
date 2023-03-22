(declare-const X String)
; A-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecomWindowswww\.trackhits\.ccHost\x3a
(assert (str.in_re X (str.to_re "A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}Windowswww.trackhits.ccHost:\u{a}")))
(check-sat)

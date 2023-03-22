(declare-const X String)
; Ts2\x2FUser-Agent\x3Aactualnames\.comGURLwww\x2Ealtnet\x2Ecom
(assert (str.in_re X (str.to_re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\u{1b}\u{a}")))
(check-sat)

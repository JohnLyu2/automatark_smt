(declare-const X String)
; www\x2Emakemesearch\x2EcomLOGOnevclxatmlhavj\x2fvsy
(assert (not (str.in_re X (str.to_re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\u{a}"))))
(check-sat)

(exit)

(declare-const X String)
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (str.in_re X (str.to_re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\u{a}")))
(check-sat)

(exit)

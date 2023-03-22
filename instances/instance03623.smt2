(declare-const X String)
; \x2FrssaboutinformationHost\x3A\x2Fezsbu=DISKHost\x3Aad\x2Emokead\x2Ecom
(assert (not (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}"))))
(check-sat)

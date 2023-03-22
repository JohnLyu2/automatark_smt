(declare-const X String)
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
; PcastPORT-config\x2E180solutions\x2Ecom
(assert (not (str.in_re X (str.to_re "PcastPORT-config.180solutions.com\u{a}"))))
(check-sat)

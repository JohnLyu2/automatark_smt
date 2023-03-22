(declare-const X String)
; rank\x2Etoolbarbrowser\x2Ecomlnzzlnbk\x2fpkrm\.fin
(assert (not (str.in_re X (str.to_re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\u{a}"))))
(check-sat)

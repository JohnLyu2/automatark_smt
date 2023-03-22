(declare-const X String)
; Yeah\!Host\x3AEnTrYwww\x2EZSearchResults\x2Ecom
(assert (not (str.in_re X (str.to_re "Yeah!Host:EnTrYwww.ZSearchResults.com\u{13}\u{a}"))))
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in_re X (str.to_re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\u{a}")))
; Server\x3AWordTheHost\x3afrom
(assert (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}")))
(check-sat)

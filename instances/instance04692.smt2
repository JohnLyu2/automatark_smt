(declare-const X String)
; TM_SEARCH3Host\x3aUser-Agent\x3Amedia\x2Edxcdirect\x2Ecom
(assert (str.in_re X (str.to_re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\u{a}")))
(check-sat)

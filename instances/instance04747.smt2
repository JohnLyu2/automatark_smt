(declare-const X String)
; 3AFrom\x3Adddrep\x2Edudu\x2Ecomform-data\x3B\x20name=\x22pid\x22
(assert (str.in_re X (str.to_re "3AFrom:dddrep.dudu.comform-data; name=\u{22}pid\u{22}\u{a}")))
(check-sat)

(exit)

(declare-const X String)
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (str.in_re X (str.to_re "toolbar_domain_redirectlibManager.dll^get\u{a}")))
(check-sat)

(exit)

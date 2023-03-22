(declare-const X String)
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (str.in_re X (str.to_re "LogsHXLogOnlytoolbar.i-lookup.com\u{a}")))
(check-sat)

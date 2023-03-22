(declare-const X String)
; /filename=[^\n]*\x2emim/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mim/i\u{a}"))))
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in_re X (str.to_re "LogsHXLogOnlytoolbar.i-lookup.com\u{a}"))))
(check-sat)

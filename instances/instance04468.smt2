(declare-const X String)
; /filename=[^\n]*\x2esearch-ms/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".search-ms/i\u{a}")))))
(check-sat)

(exit)

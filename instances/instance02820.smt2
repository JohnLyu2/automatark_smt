(declare-const X String)
; /filename=[^\n]*\x2eses/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}"))))
(check-sat)

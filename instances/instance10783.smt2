(declare-const X String)
; Current[^\n\r]*server[^\n\r]*Host\x3Aocllceclbhs\x2fgth
(assert (str.in_re X (re.++ (str.to_re "Current") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "server") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:ocllceclbhs/gth\u{a}"))))
; /filename=[^\n]*\x2em4r/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4r/i\u{a}"))))
; /filename=[^\n]*\x2ehlp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hlp/i\u{a}"))))
(check-sat)

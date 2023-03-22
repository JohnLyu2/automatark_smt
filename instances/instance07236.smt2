(declare-const X String)
; /new (java|org)/Ui
(assert (str.in_re X (re.++ (str.to_re "/new ") (re.union (str.to_re "java") (str.to_re "org")) (str.to_re "/Ui\u{a}"))))
; /filename=[^\n]*\x2ef4a/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4a/i\u{a}"))))
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (not (str.in_re X (str.to_re "trustyfiles.comBlade####.smx?\u{a}"))))
; /filename=[^\n]*\x2ehhk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hhk/i\u{a}")))))
(check-sat)

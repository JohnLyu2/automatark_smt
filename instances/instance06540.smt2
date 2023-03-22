(declare-const X String)
; /filename=[^\n]*\x2epict/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pict/i\u{a}")))))
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in_re X (str.to_re "SSKCstech.web-nexus.net\u{a}"))))
; [1-8][0-9]{2}[0-9]{5}
(assert (not (str.in_re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

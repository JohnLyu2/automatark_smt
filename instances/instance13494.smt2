(declare-const X String)
; /filename=[^\n]*\x2emht/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mht/i\u{a}"))))
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp3/i\u{a}")))))
; Logger.*aresflashdownloader\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.* re.allchar) (str.to_re "aresflashdownloader.com\u{a}")))))
(check-sat)

(exit)

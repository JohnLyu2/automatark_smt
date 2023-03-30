(declare-const X String)
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}")))))
; \.icosearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in_re X (str.to_re ".icosearch.conduit.com<logs@logs.com>\u{a}"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}")))))
; /filename=[^\n]*\x2esmi/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smi/i\u{a}")))))
(check-sat)

(exit)

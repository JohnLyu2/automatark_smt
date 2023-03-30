(declare-const X String)
; CUSTOM\swww\x2Elocators\x2Ecomas\x2Estarware\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "CUSTOM") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.locators.comas.starware.com\u{a}"))))
; /filename=[^\n]*\x2eqcp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".qcp/i\u{a}")))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in_re X (str.to_re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\u{13}\u{a}")))
(check-sat)

(exit)

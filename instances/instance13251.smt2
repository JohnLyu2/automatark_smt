(declare-const X String)
; ^-?\d+([.,]?\d+)?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ewri/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wri/i\u{a}")))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in_re X (str.to_re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\u{13}\u{a}")))
; \x2Ephp\s+Host\x3Aorigin\x3Dsidefind\x22The
(assert (not (str.in_re X (re.++ (str.to_re ".php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{22}The\u{a}")))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in_re X (re.++ (str.to_re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re ".bin/\u{a}")))))
(check-sat)

(exit)

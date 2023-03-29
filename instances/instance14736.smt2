(declare-const X String)
; Logs.*with\x3A\s+OnlineServer\x3aYeah\!
(assert (not (str.in_re X (re.++ (str.to_re "Logs") (re.* re.allchar) (str.to_re "with:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!\u{a}")))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; /filename=[^\n]*\x2epmd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pmd/i\u{a}"))))
(check-sat)

(exit)

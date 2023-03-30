(declare-const X String)
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}"))))
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Host:SoftActivity\u{13}Yeah!\u{a}")))
; ^\d+((\.|\,)\d+)?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; User-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}")))
(check-sat)

(exit)

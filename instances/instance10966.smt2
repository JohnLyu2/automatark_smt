(declare-const X String)
; ^100(\.0{0,2}?)?$|^\d{0,2}(\.\d{0,2})?$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "100") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0"))))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))))
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Host:SoftActivity\u{13}Yeah!\u{a}")))
; InformationAgentReferer\x3AClient
(assert (str.in_re X (str.to_re "InformationAgentReferer:Client\u{a}")))
; /filename=[^\n]*\x2epfa/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfa/i\u{a}")))))
; <[^>]*?>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
(check-sat)

(exit)

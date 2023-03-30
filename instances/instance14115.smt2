(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))
; ^\b(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)\\/(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "29") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to_re "\u{5c}/") (re.union (re.++ (str.to_re "29") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to_re "\u{a}"))))
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (not (str.in_re X (str.to_re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\u{a}"))))
; Host\x3AAttachedengineact=Download
(assert (not (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}"))))
(check-sat)

(exit)

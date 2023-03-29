(declare-const X String)
; twfofrfzlugq\x2feve\.qd\d+
(assert (not (str.in_re X (re.++ (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; \x7D\x7BTrojan\x3ASubject\x3Aversion
(assert (str.in_re X (str.to_re "}{Trojan:Subject:version\u{a}")))
; ^\d+\/?\d*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)

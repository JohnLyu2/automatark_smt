(declare-const X String)
; twfofrfzlugq\x2feve\.qd\d+
(assert (str.in_re X (re.++ (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)

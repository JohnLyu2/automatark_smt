(declare-const X String)
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (not (str.in_re X (str.to_re "EIcdpnode=reportUID/ServertoX-Mailer:\u{13}\u{a}"))))
; (^\d{1,9})+(,\d{1,9})*$
(assert (not (str.in_re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to_re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

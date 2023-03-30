(declare-const X String)
; \d\d?\d?\.\d\d?\d?\.\d\d?\d?\.\d\d?\d?
(assert (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}"))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/ezsb") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}\u{a}")))))
(check-sat)

(exit)

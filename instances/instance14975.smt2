(declare-const X String)
; ^\€?(\d{1,3}[.](\d{3}[.])*\d{3}|\d+)([,]\d{1,2})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "\u{20ac}")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warez") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}Subject:KEY=\u{a}"))))
(check-sat)

(exit)

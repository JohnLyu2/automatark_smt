(declare-const X String)
; SK\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}|SK\d{22}
(assert (not (str.in_re X (re.++ (str.to_re "SK") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 22 22) (re.range "0" "9")) (str.to_re "\u{a}")))))))
(check-sat)

(exit)

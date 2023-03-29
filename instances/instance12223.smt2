(declare-const X String)
; /^data\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in_re X (re.++ (str.to_re "/data|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}")))))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in_re X (re.++ (str.to_re "Days") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))))
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
(check-sat)

(exit)

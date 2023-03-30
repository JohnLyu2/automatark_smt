(declare-const X String)
; This\s+\x7D\x7BPassword\x3A\d+
(assert (not (str.in_re X (re.++ (str.to_re "This") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}")))))
(check-sat)

(exit)

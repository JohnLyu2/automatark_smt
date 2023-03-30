(declare-const X String)
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)

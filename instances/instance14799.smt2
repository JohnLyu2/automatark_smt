(declare-const X String)
; /^connected\x2e[^\x0D\x0A]*20\d\d[^\x0D\x0A]*ver\x3A\s+Legends\s2\x2e1/smi
(assert (not (str.in_re X (re.++ (str.to_re "/connected.") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "ver:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Legends") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "2.1/smi\u{a}")))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}")))))
(check-sat)

(exit)

(declare-const X String)
; /^connected\x2e[^\x0D\x0A]*20\d\d[^\x0D\x0A]*ver\x3A\s+Legends\s2\x2e1/smi
(assert (not (str.in_re X (re.++ (str.to_re "/connected.") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "ver:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Legends") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "2.1/smi\u{a}")))))
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to_re "FTPsearch.dropspam.com\u{a}"))))
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (not (str.in_re X (re.++ (str.to_re "Keylogger") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online100013Agentsvr^^Merlin\u{13}Host:Host:port\u{a}")))))
(check-sat)

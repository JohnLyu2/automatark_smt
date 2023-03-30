(declare-const X String)
; ^[^ ,0]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re ",") (str.to_re "0"))) (str.to_re "\u{a}")))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{a}")))))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (not (str.in_re X (re.++ (str.to_re "/searchfast/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)

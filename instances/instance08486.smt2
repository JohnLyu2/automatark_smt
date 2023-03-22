(declare-const X String)
; (\n\r)   replacement string---->\n
(assert (not (str.in_re X (str.to_re "\u{a}\u{d}   replacement string---->\u{a}\u{a}"))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vqf/i\u{a}"))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{a}")))))
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (str.in_re X (str.to_re "ServerAgentX-Mailer:\u{13}TencentTraveler\u{a}")))
(check-sat)

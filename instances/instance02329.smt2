(declare-const X String)
; Subject\x3A\d+AgentUser-Agent\x3ahasHost\x3a
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "AgentUser-Agent:hasHost:\u{a}"))))
(check-sat)

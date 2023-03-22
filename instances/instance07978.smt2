(declare-const X String)
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (not (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}"))))
; $(\n|\r\n)
(assert (str.in_re X (re.++ (re.union (str.to_re "\u{a}") (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}"))))
; ^[-+]?\d+(\.\d)?\d*$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}")))))
(check-sat)

(declare-const X String)
; ShadowNet\s+AID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in_re X (re.++ (str.to_re "ShadowNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AID/User-Agent:Fen\u{ea}treEye/dss/cc.2_0_0.\u{a}")))))
(check-sat)
